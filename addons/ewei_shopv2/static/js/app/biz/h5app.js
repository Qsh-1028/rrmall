define(["core", "ydb"], function(core) {
	var modal = {};
	modal.init = function(params) {
		modal.share = params.share ? params.share : null;
		modal.backurl = params.backurl;
		modal.payinfo = params.payinfo;
		modal.statusbar = params.statusbar;
		modal.initYDB();
		modal.initSet();
		modal.initHN();
		modal.initHM();
		modal.initSNS();
		modal.initOther()
	};
	modal.initYDB = function() {
		window.YDB = modal.YDB = new YDBOBJ()
	};
	modal.initSet = function() {
		var isIOS = modal.isIOS();
		if (isIOS) {
			modal.YDB.SetStatusBarStyle(modal.statusbar)
		}
	};
	modal.initHN = function() {
		if ($(".fui-header .fui-header-right").length < 1) {
			return
		}
		var nomenu = $(".fui-header .fui-header-right").data("nomenu");
		if (nomenu) {
			return
		}
		var html = "";
		$('.head-nav').remove();
		if ($('.head-nav').length <= 0) {
			if ($(".fui-header .fui-header-right a").length > 0) {
				html += $(".fui-header .fui-header-right").html()
			}
			html +=
				'<a href="javascript:;" class="head-nav" style="display: inline-block"><i class="icon icon-category"></i></a>';
			$(".fui-header .fui-header-right").empty();
			$(".fui-header .fui-header-right").html(html)
		}
	};
	modal.initHM = function() {
		$(".head-nav, .head-menu-mask").unbind("click").click(function() {
			if ($(".fui-mask").length > 0) {
				return
			}
			$(".head-menu-mask").fadeToggle(100);
			$(".head-menu").fadeToggle(100)
		});
		$(".head-menu").find("nav").unbind("click").click(function() {
			var type = $(this).data("type");
			if (!type) {
				return
			}
			$(".head-menu-mask").fadeOut(100);
			$(".head-menu").fadeOut(100);
			if (type == "share") {
				modal.initShare()
			}
          	if (type == "scan") {
				modal.scan()
			}
			if (type == "reload") {
				setTimeout(function() {
					location.reload(true)
				}, 200)
			}
			if (type == "exitapp") {
				FoxUI.confirm("确定退出吗？", function() {
					modal.YDB.ExitApp()
				})
			}
			if (type == "browser") {}
			if (type == "eraser") {
				//modal.YDB.ClearCache()
				FoxUI.toast.show("正在清理");
				setTimeout(function() {
					plus.cache.clear(function() {
						FoxUI.toast.show("清理完毕");
					});
				}, 300);

			}
		})
	};
  	modal.scan=function(){
      	var ScanPage = plus.webview.getWebviewById('lib.html');
		ScanPage.evalJS('showScan()');
    }
	modal.initShare = function() {
		if (!modal.share) {
			FoxUI.alert("分享参数错误");
			return
		}

		//modal.YDB.Share(modal.share.title, modal.share.desc, modal.share.imgUrl, modal.share.link)
		if (!plus.webview.getWebviewById('share')) {
			var subpage_style = {
				//top: '45px',
				bottom: '0px',
				background: "transparent"
			};
			plus.webview.create('share.html', 'share', subpage_style);
		}
		plus.webview.getWebviewById('share').evalJS('sharepage.showShareBox("' + modal.share.title + '", "' + modal.share.desc +
			'", "' + modal.share.imgUrl + '", "' + modal.share.link + '")');
	};
	modal.initSNS = function() {
		$(document).on('click', ".btn-sns", function() {
			var sns = $(this).data("sns");
			if (sns == "wx") {
				FoxUI.toast.show("正在呼起微信");
				console.log(core.getUrl("account/sns", {
					sns: "wx",
					backurl: modal.backurl
				}, true));
				plus.oauth.getServices(function(services) {
					console.log(JSON.stringify(services));
					//由于安卓和ios的排序不一致，转一下对象
					var servicesJSON = {}
					for (var i = 0; i < services.length; i++) {
						servicesJSON[services[i].id] = services[i];
					}
                  	//alert(JSON.stringify(servicesJSON));
					aweixin = servicesJSON['weixin'];
					aweixin.authorize(function(e) {
							var toURL = core.getUrl("account/sns", {
								sns: "wx",
								backurl: modal.backurl
							}, true)
							toURL = toURL + "&code=" + e.code
							console.log(toURL);
							location.href = toURL;
						}, function(e) {
							alert("授权失败：" + JSON.stringify(e));
						}, {
							scope: 'snsapi_userinfo',
							state: 'authorize test'
					});
					//alert(JSON.stringify(aweixin));
					//alert(JSON.stringify(aweixin.authorize));

				}, function(e) {
					//alert("获取分享服务列表失败：" + e.message + " - " + e.code);
				});

			} else {
				if (sns == "qq") {
					FoxUI.toast.show("正在呼起手机QQ");
					modal.YDB.QQLogin(core.getUrl("account/sns", {
						sns: "qq",
						backurl: modal.backurl
					}, true))
				} else {
					return
				}
			}
		})
	};
	modal.initOther = function() {
		$("#btn-share").unbind("click").click(function() {
			modal.initShare()
		})
	};
	window.appPay = modal.appPay = function(app, ordersn, money, status, callback) {

		ordersn = ordersn ? ordersn : modal.payinfo.ordersn;
		money = money ? money : modal.payinfo.money;
		if (!modal.payinfo) {
			FoxUI.toast.show("参数错误(0)");
			return
		}
		if (!ordersn || money <= 0) {
			FoxUI.toast.show("参数错误(1)");
			return
		}
		//alert(ordersn);
		if (app == 'wechat') {
			if (!modal.payinfo.mcname) {
				FoxUI.toast.show("参数错误(2)");
				return
			}
			FoxUI.toast.show("正在呼起微信");
			var searchURL = window.location.search;
			searchURL = searchURL.substring(1, searchURL.length);
			var i = searchURL.split("&")[0];
			var c = searchURL.split("&")[1];
			var m = searchURL.split("&")[2];
			var d = searchURL.split("&")[3];
			var url_get_pay_config = "/app/index.php?" + i + "&" + c + "&" + m + "&" + d + '&' +
				"r=account.index.get_pay_config";
			var url_get_pay_data = "/app/index.php?" + i + "&" + c + "&" + m + "&" + d + '&' + "r=account.index.Pay_data";
          	var url_get_orderstatus = "/app/index.php?" + i + "&" + c + "&" + m + "&" + d + '&' + "r=account.index.orderstatus";
			// alert(url_get_pay_config); 
		
			$.post(url_get_pay_config, {
					id: "app_pay"
				},
				function(data) {
					jsonObj = eval('(' + data + ')');
					wx_appid = jsonObj['app_wechat']['appid'];
					wx_merchid = jsonObj['app_wechat']['merchid'];
					wx_apikey = jsonObj['app_wechat']['apikey'];
					if (wx_appid == "" || wx_merchid == "" || wx_apikey == "") {
						FoxUI.toast.show("微信支付参数错误(2)");
						return

					}
					
					$.post(url_get_pay_data, {
							"fee": money,
							"submit_wx": true,
							"wx_appid": wx_appid,
							"wx_merchid": wx_merchid,
							"wx_apikey": wx_apikey,
							pay_attach: modal.payinfo.mcname,
							ordersn: ordersn
						},
						function(data) {
							plus.payment.getChannels(function(services) {
								var servicesJSON = {}
								for (var i = 0; i < services.length; i++) {
									servicesJSON[services[i].id] = services[i];
								}
								plus.payment.request(servicesJSON['wxpay'], data, function(e) {
									$.post(url_get_orderstatus, {
											ordersn: ordersn,
                                      		paytype:"wechat"
											//tradeno:e.tradeno
										},
										function(data3) {
											
										},"JSON");
								}, function(e) {
									//alert(JSON.stringify(e));
								});
								//plus.payment.request(channel, statement, successCB, errorCB);
							}, function(e) {
								//alert( "获取支付通道列表失败："+e.message );
							});
							//BSL.Pay(data, 'WEIXIN', 'result_pay');
						},
						"JSON");
				},
				"");

			//modal.YDB.SetWxpayInfo(modal.payinfo.mcname, "订单支付" + ordersn, money, ordersn, modal.payinfo.attach)
		}
		if (app == 'alipay') {
			if (!modal.payinfo.aliname) {
				FoxUI.toast.show("参数错误(2)");
				return
			}
			FoxUI.toast.show("正在呼起支付宝");

			var ali_appid = ''; //设置阿里支付appid
			var ali_private_key_rsa2 = ''; //设置阿里支付私钥
			var ali_public_key_rsa2 = ''; //设置阿里支付公钥
			var ali_notify_url = '';
			//alert(1);
			var searchURL = window.location.search;
			searchURL = searchURL.substring(1, searchURL.length);
			var i = searchURL.split("&")[0];
			var c = searchURL.split("&")[1];
			var m = searchURL.split("&")[2];
			var d = searchURL.split("&")[3];
			var url_get_pay_config = "/app/index.php?" + i + "&" + c + "&" + m + "&" + d + '&' +
				"r=account.index.get_pay_config";
			var url_get_pay_data = "/app/index.php?" + i + "&" + c + "&" + m + "&" + d + '&' + "r=account.index.Pay_data";
			var url_get_orderstatus = "/app/index.php?" + i + "&" + c + "&" + m + "&" + d + '&' + "r=account.index.orderstatus";
			//alert(url_get_pay_config); 

			$.post(url_get_pay_config, {
					id: "app_pay"
				},
				function(data) {

					//将后台传来的json 格式化，之后在获取想要的数值
					jsonObj = eval('(' + data + ')');
					ali_appid = jsonObj['app_alipay']['appid'];
					ali_private_key_rsa2 = jsonObj['app_alipay']['private_key_rsa2'];
					ali_public_key_rsa2 = jsonObj['app_alipay']['public_key_rsa2'];
					ali_notify_url = jsonObj['app_alipay']['ali_notify_url'];


					$.post(url_get_pay_data, {
							submit_ali: "true",
							fee: money,
							ali_appid: ali_appid,
							ali_private_key_rsa2: ali_private_key_rsa2,
							ali_public_key_rsa2: ali_public_key_rsa2,
							ordersn: ordersn,
							ali_notify_url: ali_notify_url,
							pay_attach: modal.payinfo.aliname
						},
						function(data2) {
							data2 = $.trim(data2);
							data_alipay = data2; // '"'+data2+'"';
							//alert(data_alipay);
							plus.payment.getChannels(function(services) {
								var servicesJSON = {}
								for (var i = 0; i < services.length; i++) {
									servicesJSON[services[i].id] = services[i];
								}
                              	//alert(JSON.stringify(servicesJSON));
								plus.payment.request(servicesJSON['alipay'], data2, function(e) {
                                  	
									$.post(url_get_orderstatus, {
											ordersn: ordersn,
											tradeno:e.tradeno,
                                      		paytype:"alipay"
										},
										function(data3) {
											
										},"JSON");
								}, function(e) {
									//alert(JSON.stringify(e));
								});
								//plus.payment.request(channel, statement, successCB, errorCB);
							}, function(e) {
								alert( "获取支付通道列表失败："+e.message );
							});
							//BSL.Pay(data_alipay, 'ALIPAY', 'result_pay');
						},
						"text");


				},
				"");



			//modal.YDB.SetAlipayInfo(modal.payinfo.aliname, modal.payinfo.attach + ":APP", money, ordersn);
			//modal.YDB.SetRSA2AlipayInfo(modal.payinfo.aliname, modal.payinfo.attach + ":APP", money, ordersn)
		}
		$('.btn-pay').removeAttr('submit');
		$('.pay-btn').removeAttr('stop');
		FoxUI.loader.hide();
		if (status) {
			modal.getStatus(ordersn,app)
		}
		if (callback) {
			callback()
		}
	};
	modal.getStatus = function(ordersn,app) {
		var paytype = modal.payinfo.type;
      	//alert(app);
		if (paytype == 0) {
			var url = core.getUrl('order/pay/orderstatus');
			var data = {
				id: modal.payinfo.orderid
			};
			var url_return = core.getUrl('order/pay/success', {
				id: modal.payinfo.orderid
			})
		} else if (paytype == 1) {
			var url = core.getUrl('member/recharge/getstatus');
			var data = {
				logno: ordersn
			};
			var url_return = core.getUrl('member')
		} else if (paytype == 6) {
			var url = core.getUrl('threen/register/lottery');
			var data = {
				id: ordersn
			};
			var url_return = core.getUrl('threen')
		}
		data.app = app;
		data.ordersn = ordersn;
		var settime = setInterval(function() {
			$.getJSON(url, data, function(ret) {

				if (ret.status >= 1) {

					location.href = url_return;
					clearInterval(settime);
				} else {}
			})
		}, 1000)
	};
	window.h5app = modal;
	modal.initWX = function() {
		modal.initWXinstall(1);
		var isIOS = modal.isIOS();
		if (isIOS) {
			modal.YDB.isWXAppInstalled("modal.initWXinstall")
		}
	};
	modal.initWXinstall = function(status) {
		if (status) {
			$("#threeWX").show()
		}
	};
	modal.isIOS = function() {
		var ua = navigator.userAgent;
		var ipad = ua.match(/(iPad).*OS\s([\d_]+)/);
		var ipod = ua.match(/(iPod)(.*OS\s([\d_]+))?/);
		var iphone = !ipad && ua.match(/(iPhone\sOS)\s([\d_]+)/);
		if (ipad || iphone || ipod) {
			return true
		}
		return false
	};
	return modal
});


document.addEventListener('plusready', function(){
  	
	if(plus.os.name=="iOS"&&plus.runtime.appid==plus.webview.currentWebview().id)
    {
      plus.webview.currentWebview().setStyle({"top":"0px"});
    }
  	plus.navigator.setStatusBarStyle('dark');
  	var TitleNView = plus.webview.currentWebview().getTitleNView();
  	if(TitleNView){TitleNView.close()}
	var aList = document.getElementsByTagName("a");
	var len = aList.length;
	for (var i = 0; i < len; i++) {
		var thisA = aList[i];
		if (thisA.href.indexOf("http") > -1 || thisA.href.indexOf("index") > -1) {
			thisA.setAttribute("onclick", "location.href ='" + thisA.href + "'");
			thisA.href = "javascript:void(0)";
		}
	};
});


function shareAlertQr(imgsrc){
  plus.webview.getWebviewById('shareAlertQr').evalJS('shareAlertQr.showTis("'+imgsrc+'")');
}
var longClick =0;
$("#alertqrimg")&&$("#alertqrimg").on({
    touchstart: function(e){
      	
        longClick=0;//设置初始为0
      	var imgsrc = $(this).attr('src');
        timeOutEvent = setTimeout(function(){
            console.log('123');
          	shareAlertQr(imgsrc)
            longClick=1;//假如长按，则设置为1
        },500);
    },
    touchmove: function(){
        clearTimeout(timeOutEvent);
        timeOutEvent = 0;
        e.preventDefault();
    },
    touchend: function(e){
        clearTimeout(timeOutEvent);
        e.preventDefault();
        return false;
    }
});
var iset = setInterval(function(){
					if($("#alert-picker").length>0)
					{
						console.log($("alert-picker"));
                      	$("#alert-picker .alert-goods-img").on({
                            touchstart: function(e){
                                longClick=0;//设置初始为0
                                var imgsrc = $(this).attr('src');
                                timeOutEvent = setTimeout(function(){
                                    console.log('123');
                                    shareAlertQr(imgsrc)
                                    longClick=1;//假如长按，则设置为1
                                },500);
                            },
                            touchmove: function(){
                                clearTimeout(timeOutEvent);
                                timeOutEvent = 0;
                                e.preventDefault();
                            },
                            touchend: function(e){
                                clearTimeout(timeOutEvent);
                                e.preventDefault();
                                return false;
                            }
                        });
						clearInterval(iset);
					}
				},10);
$("#alert-picker")&&$("#alert-picker .alert-goods-img").on({
    touchstart: function(e){
        longClick=0;//设置初始为0
      	var imgsrc = $(this).attr('src');
        timeOutEvent = setTimeout(function(){
            console.log('123');
          	shareAlertQr(imgsrc)
            longClick=1;//假如长按，则设置为1
        },500);
    },
    touchmove: function(){
        clearTimeout(timeOutEvent);
        timeOutEvent = 0;
        e.preventDefault();
    },
    touchend: function(e){
        clearTimeout(timeOutEvent);
        e.preventDefault();
        return false;
    }
});
if (navigator.userAgent.indexOf("Html5Plus") > -1) {
  	if(plus.os.name=="iOS"&&plus.runtime.appid==plus.webview.currentWebview().id)
    {
      plus.webview.currentWebview().setStyle({"top":"20px"});
    }
  	
  	plus.navigator.setStatusBarStyle('dark');
  	var TitleNView = plus.webview.currentWebview().getTitleNView();
  	if(TitleNView){TitleNView.close()}
	var aList = document.getElementsByTagName("a");
	var len = aList.length;
	for (var i = 0; i < len; i++) {
		var thisA = aList[i];
		if (thisA.href.indexOf("http") > -1 || thisA.href.indexOf("index") > -1) {
			thisA.setAttribute("onclick", "location.href ='" + thisA.href + "'");
			thisA.href = "javascript:void(0)";
		}
	};
}