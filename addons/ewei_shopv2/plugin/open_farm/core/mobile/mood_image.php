<?php
//淘宝店铺名：云硕科技 qq:960327091
class MoodImage
{
	/**
	static public function getFileImg($path)
	{
		$pathInfo = pathinfo($path);
		$image = NULL;

		switch ($pathInfo['extension']) {
		case 'jpg':
			$image = imagecreatefromjpeg($path);
			break;

		case 'png':
			$image = imagecreatefrompng($path);
			break;

		default:
			$image = imagecreatefromstring(file_get_contents($path));
			break;
		}

		return $image;
	}

	/**
	static public function initialFileBackground($path)
	{
		$image = self::getFileImg($path);
		imagecolorallocatealpha($image, 255, 255, 255, 255);
		return $image;
	}

	/**
	static public function getStrStart($totalLength, $byteLength, $emptyLength, $str)
	{
		$width = mb_strwidth($str);
		$length = mb_strlen($str);
		return ($totalLength - ($width * $byteLength + $length * $emptyLength)) / 2;
	}

	/**
	static public function getImageLength($overallLength, $insideLength)
	{
		return ($overallLength - $insideLength) / 2;
	}

	/**
	static public function main($backgroundPath, $picturePath, $portraitPath, $qrCodePath, $nickname, $autograph, $save = false, $savePath = false)
	{
		if (!$save) {
			header('Content-Type:text/html; charset=utf-8');
			header('Content-type:image/png');
		}

		$backgroundImage = self::initialFileBackground($backgroundPath);
		list($backgroundWidth, $backgroundHeight) = getimagesize($backgroundPath);
		$pictureImage = self::getFileImg($picturePath);
		list($pictureWidth, $pictureHeight) = getimagesize($picturePath);
		$pictureStart = self::getImageLength($backgroundWidth, $pictureWidth);
		imagecopymerge($backgroundImage, $pictureImage, $pictureStart, 40, 0, 0, $pictureWidth, $pictureHeight, 100);
		$portraitImage = self::getFileImg($portraitPath);
		list($portraitWidth, $portraitHeight) = getimagesize($portraitPath);
		$portraitStart = self::getImageLength($backgroundWidth, $portraitWidth);
		$portraitWidth = $portraitWidth <= $portraitHeight ? $portraitWidth : $portraitHeight;
		$r = $portraitWidth / 2;
		$x = 0;

		while ($x < $portraitWidth) {
			$y = 0;

			while ($y < $portraitHeight) {
				$rgbColor = imagecolorat($portraitImage, $x, $y);

				if (($x - $r) * ($x - $r) + ($y - $r) * ($y - $r) < $r * $r) {
					imagesetpixel($backgroundImage, $x + $portraitStart, $y + 341, $rgbColor);
				}

				++$y;
			}

			++$x;
		}

		$fontFolder = __DIR__ . '/../../static/mobile/font/';
		$overallLength = $backgroundWidth;
		$emptyLength = 6;
		$wordLength = 14;
		$nicknameStart = self::getStrStart($overallLength, $wordLength, $emptyLength, $nickname);
		$nicknameColor = imagecolorallocate($backgroundImage, 0, 0, 0);
		$fontFile = $fontFolder . '/PingFangMedium.ttf';
		imagettftext($backgroundImage, 24, 0, $nicknameStart, 520, $nicknameColor, $fontFile, $nickname);
		$wordLength = 9;
		$emptyLength = 6;
		$autographStart = self::getStrStart($overallLength, $wordLength, $emptyLength, $autograph);
		$autographColor = imagecolorallocate($backgroundImage, 0, 0, 0);
		$fontFile = $fontFolder . '/PingFangRegular.ttf';
		imagettftext($backgroundImage, 18, 0, $autographStart, 560, $autographColor, $fontFile, $autograph);
		$qrCodeImage = self::getFileImg($qrCodePath);
		list($qrCodeWidth, $qrCodeHeight) = getimagesize($qrCodePath);
		$qrCodeStart = self::getImageLength($backgroundWidth, $qrCodeWidth);
		imagecopymerge($backgroundImage, $qrCodeImage, $qrCodeStart, 599, 0, 0, $qrCodeWidth, $qrCodeHeight, 100);
		if ($save && $savePath) {
			imagepng($backgroundImage, $savePath);
		}
		else {
			imagepng($backgroundImage);
		}

		imagedestroy($pictureImage);
		imagedestroy($portraitImage);
		imagedestroy($qrCodeImage);
		imagedestroy($backgroundImage);
	}
}


?>