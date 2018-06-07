package com.ssd.app.api;

import java.io.IOException;
import java.net.URLDecoder;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssd.SpringHelper;
import com.ssd.app.bean.QQzoneUserInfo;
import com.ssd.app.bean.UserAward;
import com.ssd.app.bean.UserInfo;
import com.ssd.app.bean.UserMission;
import com.ssd.app.bean.UserPayOrder;
import com.ssd.app.bean.WanbaUserInfo;
import com.ssd.app.biz.AccountBIZ;
import com.ssd.app.biz.AwardBIZ;
import com.ssd.app.biz.MissionBIZ;
import com.ssd.app.biz.PayBIZ;
import com.ssd.app.biz.QQzoneUserBIZ;
import com.ssd.app.biz.SessionBIZ;
import com.ssd.app.biz.UserBIZ;
import com.ssd.app.biz.UuidBIZ;
import com.ssd.app.biz.ViewBIZ;
import com.ssd.app.biz.WanbaUserBIZ;
import com.ssd.app.dao.UserPayOrderJdbcDAO;
import com.ssd.framework.apiclient.ISnsRestClient;
import com.ssd.framework.apiclient.bean.SnsApiMessage;
import com.ssd.framework.apiclient.bean.SnsUserInfo;
import com.ssd.framework.apiclient.impl.migua.GameSnsRestClient;
import com.ssd.framework.apiclient.impl.xyhl.SnsRestClient;
import com.ssd.framework.sso.bean.SSOInfo;
import com.ssd.framework.util.Checking;
import com.ssd.framework.util.ReqUtil;
import com.ssd.framework.util.Symbols;
import com.ssd.util.SnsApi;
import com.ssd.util.SysParam;
import com.ssd.util.View;
import com.ssd.util.log.GoldLogger;

/**
 * 
 * @author haris (huanghq@migua.net)
 * 
 */
@Controller
@RequestMapping(value = "api/pay")
public class ApiPay {
	/**
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 * @throws JSONException
	 */
	@RequestMapping(value = "")
	public String pay(HttpServletRequest request, HttpServletResponse response)
			throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}

		// 获取平台API实例
		int platform = sso.getPlatform().intValue();
		// 返回
		ret.put("code", 0);
		ret.put("platform", platform);
		String url = "api/pay/platform.do";
		// if (platform == 0) {
		// url = "api/pay/in.do";
		// }
		if (platform == SnsApi.PLATFORM_UC9GAME) {
			url = "api/pay/uc/9g.do";
		}
		if (platform == SnsApi.PLATFORM_PPCN) {
			url = "api/pay/ppcn.do";
		}
		if (platform == SnsApi.PLATFORM_UC9GAMECLIENT) {
			url = "api/pay/uc/9gclient.do";
		}
		if (platform == SnsApi.PLATFORM_UC9GAMECLIENT_IOS) {
			url = "api/pay/uc/9gclientios.do";
		}
		if (platform == SnsApi.PLATFORM_CMCC) {
			url = "api/pay/cmcc.do";
		}
		if (platform == SnsApi.PLATFORM_LIEBAO) {
			url = "api/pay/liebao.do";
		}
		if (platform == SnsApi.PLATFORM_WANBA
				|| platform == SnsApi.PLATFORM_WANBA_IOS) {
			url = "api/pay/wanba.do";
		}
		if (platform == SnsApi.PLATFORM_G4399) {
			url = "api/pay/g4399.do";
		}
		if (platform == SnsApi.PLATFORM_WIFIWIFE) {
			url = "api/pay/aiaiu.do";
		}
		if (platform == SnsApi.PLATFORM_QDYD) {
			url = "api/pay/qdread.do";
		}
		if (platform == SnsApi.PLATFORM_QQYD) {
			url = "api/pay/qqread.do";
		}
		if (platform == SnsApi.PLATFORM_MIGUA_NEW) {
			url = "api/pay/mg/wechat.do";
		}
		if (platform == SnsApi.PLATFORM_WYX1758) {
			url = "api/pay/wyx1758.do";
		}
		if (platform == SnsApi.PLATFORM_LTSD) {
			url = "api/pay/ltsd.do";
		}
		if (platform == SnsApi.PLATFORM_VERYHOT) {
			url = "api/pay/veryhot.do";
		}
		if (platform == SnsApi.PLATFORM_WYX9G) {
			url = "api/pay/wyx9g.do";
		}
		if (platform == SnsApi.PLATFORM_CGAME) {
			url = "api/pay/cgame.do";
		}
		if (platform == SnsApi.PLATFORM_XYHL) {
			url = "api/pay/xyhd.do";
		}
		if (platform == SnsApi.PLATFORM_QUQU) {
			url = "api/pay/ququ.do";
		}
		
		if (platform == SnsApi.PLATFORM_LAYABOX) {
			url = "api/pay/layabox.do";
		}

		if (platform == SnsApi.PLATFORM_QIPA) {
			url = "api/pay/qp.do";
		}
		ret.put("url", url);
		return View.showJson(request, response, ret);
	}

	@RequestMapping(value = "platform")
	public String payPlatform(HttpServletRequest request,
			HttpServletResponse response) throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}

		// 获取平台API实例
		int platform = sso.getPlatform().intValue();
		int type = 0;
		switch (platform) {
		case SnsApi.PLATFORM_PP:
			type = UserPayOrder.TYPE_PPZS;
			break;
		case SnsApi.PLATFORM_DOWNJOY:
			type = UserPayOrder.TYPE_DOWNJOY;
			break;
		}

		// 获取平台API实例
		Long username = sso.getUsername();

		// 生成支付订单
		Long oid = UuidBIZ.getUUID(username) * 10 + 1;
		// 向portal注册订单号
		/**
		 * Integer sid = (Integer) SpringHelper.getBean("siteServer");
		 * HashMap<String, String> req = new HashMap<String, String>();
		 * req.put("sid", sid.toString()); req.put("oid", oid.toString());
		 * 
		 * ISnsRestClient portal = (ISnsRestClient) SpringHelper
		 * .getBean("portalSnsRestClient"); HashMap<String, String> reg =
		 * portal.getPayUrl(null, req); if (reg == null) { ret.put("code", 4);
		 * ret.put("msg", "抱歉，订单生成失败"); return View.showJson(request, response,
		 * ret); }
		 */
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(0);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(type);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 4);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		ret.put("code", 0);
		ret.put("msg", "ok");
		ret.put("orderId", oid.toString());

		return View.showJson(request, response, ret);
	}

	@RequestMapping(value = "qzoneh5")
	public String payQQZONEH5(HttpServletRequest request,
			HttpServletResponse response) throws JSONException, IOException {

		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}

		// 获取平台API实例
		Integer platform = sso.getPlatform().intValue();
		Long username = sso.getUsername();

		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);

		if (snsInfo == null) {
			ret.put("code", 2);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}

		// 获取充值的金额 元
		String num = request.getParameter("num");
		if (!Checking.isNumeric(num)) {
			ret.put("code", 2);
			ret.put("msg", "参数错误");
			return View.showJson(request, response, ret);
		}

		// 生成支付订单
		Long oid = UuidBIZ.getUUID(username) * 10 + 1;

		String token = snsInfo.getToken();

		if (Checking.isNullorBlank(token)) {
			ret.put("code", 2);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}

		// GENERATE PARAMS
		HashMap<String, String> params = new HashMap<String, String>();

		Integer amount = Integer.parseInt(num);

		String itemid = "";

		switch (amount) {
		case 5:
			itemid = "99";
			break;
		case 10:
			itemid = "100";
			break;
		case 50:
			itemid = "101";
			break;
		case 100:
			itemid = "102";
			break;
		case 200:
			itemid = "103";
			break;
		case 500:
			itemid = "104";
			break;
		}

		params.put("count", "1");

		params.put("itemid", itemid);

		SnsApiMessage msg = new SnsApiMessage();
		ISnsRestClient client = (ISnsRestClient) SpringHelper
				.getBean("qqwanbaSnsRestClient");

		msg.setToken(token);

		// CALL PAYURL API
		HashMap<String, String> respParams = client.getPayUrl(msg, params);

		if (respParams == null || respParams.isEmpty()) {
			ret.put("code", 2);
			ret.put("msg", "参数错误");
			return View.showJson(request, response, ret);
		}
		String code = respParams.get("code");
		ret.put("score", 0L);
		ret.put("appid", "1101328386");
		if (!Checking.isNullorBlank(token)) {
			String[] tokens = token.split("\\|");
			if (tokens != null && tokens.length > 1) {
				String openid = tokens[0];
				String openkey = tokens[1];
				if (!Checking.isNullorBlank(openid)) {
					ret.put("openid", openid);
				}
				if (!Checking.isNullorBlank(openkey)) {
					ret.put("openkey", openkey);
				}
			}
		}
		ret.put("is_vip", true);
		if (!Checking.isNullorBlank(code)) {
			if ("1004".equals(code)) {

				QQzoneUserInfo qqUserInfo = QQzoneUserBIZ
						.getQQzoneUser(username);
				if (qqUserInfo != null) {
					Long score = 0L;
					score = qqUserInfo.getScore();
					if (score != null) {
						ret.put("score", score);
					}
					ret.put("appid", "1101328386");
					if (!Checking.isNullorBlank(token)) {
						String[] tokens = token.split("\\|");
						if (tokens != null && tokens.length > 0) {
							String openid = tokens[0];
							String openkey = tokens[1];
							if (!Checking.isNullorBlank(openid)) {
								ret.put("openid", openid);
							}
							if (!Checking.isNullorBlank(openkey)) {
								ret.put("openkey", openkey);
							}
						}
					}
					int level = 0;
					level = qqUserInfo.getLevel();
					if (level > 0) {
						ret.put("is_vip", true);
					} else {
						ret.put("is_vip", false);
					}

				}

				ret.put("code", 1004);
				return View.showJson(request, response, ret);
			}
		}

		String cost = respParams.get("cost");
		if (!Checking.isNumeric(cost)) {
			ret.put("code", 2);
			ret.put("msg", "支付失败");
			return View.showJson(request, response, ret);
		}

		Integer goldAmount = 0;
		switch (amount) {
		case 5:
			goldAmount = 50;
			break;
		case 10:
			goldAmount = 100;
			break;
		case 50:
			goldAmount = 550;
			break;
		case 100:
			goldAmount = 1200;
			break;
		case 200:
			goldAmount = 2500;
			break;
		case 500:
			goldAmount = 7500;
			break;
		}

		// 创建订单
		String content = cost + "WANBA";
		Double paidAmount = Double.parseDouble(cost);
		Integer paidAmountI = paidAmount.intValue();
		// Sail 数据库插入
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent(content);
		pay.setCreatetime(now);
		pay.setFee(paidAmountI);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_SUCCESS);
		pay.setType(UserPayOrder.TYPE_WANBA);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 4);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		content = "WANBA";

		PayBIZ.pay(UserPayOrder.TYPE_WANBA, goldAmount, username, content,
				request);
		// log
		GoldLogger.log(username, 0l, GoldLogger.ACTION_ADD,
				UserPayOrder.TYPE_WANBA, 0, goldAmount, 1,
				GoldLogger.STATUS_OK, content, request);
		PayBIZ.payAward(SnsApi.PLATFORM_WANBA, username, goldAmount, request);
		// 返回要充的宝石的数量
		ret.put("code", 0);
		ret.put("msg", "ok");
		return View.showJson(request, response, ret);
	}

	@RequestMapping(value = "wanba")
	public String payWanba(HttpServletRequest request,
			HttpServletResponse response) throws JSONException, IOException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}

		// 获取平台API实例
		Integer platform = sso.getPlatform().intValue();

		Long username = sso.getUsername();
		UserInfo user = UserBIZ.user(username);
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);

		if (snsInfo == null) {
			ret.put("code", 2);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}

		UserAward userAward = AwardBIZ.getAward(username);
		if (userAward == null) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}

		WanbaUserInfo qqzoneuser = WanbaUserBIZ.getQQzoneUser(username);
		if (qqzoneuser != null) {
			ISnsRestClient client = SnsApi.getSnsApiClient(platform);
			if (client != null) {
				SnsApiMessage msg = new SnsApiMessage();
				SnsUserInfo snsUserInfo = AccountBIZ.getOnlineToken(platform,
						username);

				if (snsUserInfo != null) {
					String token = snsUserInfo.getToken();
					if (!Checking.isNullorBlank(token)) {
						msg.setToken(token);
						HashMap<String, String> params = new HashMap<String, String>();
						params.put("scriptName",
								"/v3/user/get_playzone_userinfo");
						String zoneId = null;
						if (platform == SnsApi.PLATFORM_WANBA_ANDROID) {
							zoneId = "1";
						} else {
							zoneId = "2";
						}
						if (Checking.isNumeric(zoneId)) {
							params.put("zoneid", zoneId);
						}

						HashMap<String, String> respParams = client
								.getPublicUrl(msg, params);
						if (respParams != null && !respParams.isEmpty()) {
							String score = respParams.get("score");
							if (Checking.isNumeric(score)) {
								Long scoreL = Long.parseLong(score);
								qqzoneuser.setScore(scoreL);
								ret.put("scoreShow", scoreL);
							}
							String expiredTime = respParams.get("expiredtime");
							if (Checking.isNumeric(expiredTime)) {
								qqzoneuser.setExpiredtime(expiredTime);
							}

							String is_vip = respParams.get("is_vip");
							if (!Checking.isNullorBlank(is_vip)) {
								if ("true".equals(is_vip)) {
									String vip_level = respParams
											.get("vip_level");
									if (Checking.isNumeric(vip_level)) {
										int vip_levelI = Integer
												.parseInt(vip_level);
										qqzoneuser.setLevel(vip_levelI);
									}
								} else {
									qqzoneuser.setLevel(0);
								}
							}
							WanbaUserBIZ.updateWanbaUserInfo(qqzoneuser, false);
						}
					}
				}
			}
			ret.put("level", qqzoneuser.getLevel());
		}

		// 获取充值的金额 元
		String num = request.getParameter("num");
		if (!Checking.isNumeric(num)) {
			ret.put("code", 2);
			ret.put("msg", "充值金额错误");
			return View.showJson(request, response, ret);
		}
		int payType = UserPayOrder.TYPE_WANBA_ANDROID;
		String zoneId = request.getParameter("zoneid");
		if (platform == SnsApi.PLATFORM_WANBA_ANDROID) {
			zoneId = "1";
			payType = UserPayOrder.TYPE_WANBA_ANDROID;
		} else {
			zoneId = "2";
			payType = UserPayOrder.TYPE_WANBA_IOS;
		}

		if (!Checking.isNumeric(zoneId)) {
			ret.put("code", 2);
			ret.put("msg", "充值平台错误");
			return View.showJson(request, response, ret);
		}

		int zoneIdI = Integer.parseInt(zoneId);
		// 生成支付订单
		Long oid = UuidBIZ.getUUID(username) * 10 + 1;

		String token = snsInfo.getToken();
		if (Checking.isNullorBlank(token)) {
			ret.put("code", 2);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}

		// GENERATE PARAMS
		HashMap<String, String> params = new HashMap<String, String>();
		Integer amount = Integer.parseInt(num);
		String itemid = "";

		if (zoneIdI == 1) {
			switch (amount) {
			case 50:
				itemid = "99";
				break;
			case 100:
				itemid = "100";
				break;
			case 300:
				itemid = "939";
				break;
			case 500:
				itemid = "101";
				break;
			case 900:
				itemid = "940";
				break;
			case 1000:
				itemid = "102";
				break;
			case 2000:
				itemid = "103";
				break;
			case 5000:
				itemid = "975";
				break;
			}
		}
		if (zoneIdI == 2) {
			switch (amount) {
			case 50:
				itemid = "105";
				break;
			case 100:
				itemid = "106";
				break;
			case 300:
				itemid = "941";
				break;
			case 500:
				itemid = "107";
				break;
			case 900:
				itemid = "942";
				break;
			case 1000:
				itemid = "108";
				break;
			case 2000:
				itemid = "109";
				break;
			case 5000:
				itemid = "976";
				break;
			}
		}

		if ("939".equals(itemid) || "941".equals(itemid)) {
			if (userAward.getId208() > 0) {
				ret.put("code", 2);
				ret.put("msg", "当前已购买月卡了，不能重复购买");
				return View.showJson(request, response, ret);
			}
		}

		if ("940".equals(itemid) || "942".equals(itemid)) {
			if (userAward.getId209() > 0) {
				ret.put("code", 2);
				ret.put("msg", "当前已购买成长基金了，不能重复购买");
				return View.showJson(request, response, ret);
			}
		}

		params.put("count", "1");
		params.put("itemid", itemid);
		params.put("zoneid", zoneId);

		SnsApiMessage msg = new SnsApiMessage();
		ISnsRestClient client = (ISnsRestClient) SpringHelper
				.getBean("qqwanbaSnsRestClient");

		msg.setToken(token);

		// CALL PAYURL API
		HashMap<String, String> respParams = client.getPayUrl(msg, params);
		if (respParams == null || respParams.isEmpty()) {
			ret.put("code", 2);
			ret.put("msg", "充值请求错误");
			return View.showJson(request, response, ret);
		}
		String code = respParams.get("code");
		// String code = "1004";
		ret.put("score", 0L);
		ret.put("appid", "1101328386");
		if (!Checking.isNullorBlank(token)) {
			String[] tokens = token.split("\\|");
			if (tokens != null && tokens.length > 1) {
				String openid = tokens[0];
				String openkey = tokens[1];
				if (!Checking.isNullorBlank(openid)) {
					ret.put("openid", openid);
				}
				if (!Checking.isNullorBlank(openkey)) {
					ret.put("openkey", openkey);
				}
			}
		}
		ret.put("is_vip", false);
		ret.put("defaultScore", 0);
		ret.put("wanbaCode", 0);
		ret.put("zoneid", zoneId);
		if (!Checking.isNullorBlank(code)) {
			if ("1004".equals(code)) {
				WanbaUserInfo qqUserInfo = WanbaUserBIZ.getQQzoneUser(username);
				if (qqUserInfo != null) {
					Long score = 0L;
					score = qqUserInfo.getScore();
					if (score != null) {
						ret.put("score", score);
					}
					ret.put("appid", "1101328386");
					if (!Checking.isNullorBlank(token)) {
						String[] tokens = token.split("\\|");
						if (tokens != null && tokens.length > 0) {
							String openid = tokens[0];
							String openkey = tokens[1];
							if (!Checking.isNullorBlank(openid)) {
								ret.put("openid", openid);
							}
							if (!Checking.isNullorBlank(openkey)) {
								ret.put("openkey", openkey);
							}
						}
					}
					int level = 0;
					level = qqUserInfo.getLevel();
					int defaultScore = amount;
					if (level > 0) {
						ret.put("is_vip", true);
						defaultScore = (int) (amount * 0.8);
					} else {
						ret.put("is_vip", false);
					}
					ret.put("defaultScore", defaultScore);

				}

				ret.put("code", 0);
				ret.put("wanbaCode", 1004);
				ret.put("zoneid", zoneId);
				return View.showJson(request, response, ret);
			}
		}

		String cost = respParams.get("cost");
		// String cost = "100";
		if (!Checking.isNumeric(cost)) {
			ret.put("code", 2);
			ret.put("msg", "支付失败");
			return View.showJson(request, response, ret);
		}

		int wanba_score = Integer.parseInt(cost);

		int goldAmount = amount;
		switch (goldAmount) {
		case 50:
			goldAmount = 50;
			break;
		case 100:
			goldAmount = 100;
			break;
		case 300:
			goldAmount = 300;
			break;
		case 500:
			goldAmount = 550;
			break;
		case 900:
			goldAmount = 900;
			break;
		case 1000:
			goldAmount = 1200;
			break;
		case 2000:
			goldAmount = 2500;
			break;
		case 5000:
			goldAmount = 6500;
			break;
		}

		// 创建订单
		String content = cost + "WANBA";
		// Sail 数据库插入
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent(content);
		pay.setCreatetime(now);
		pay.setFee(goldAmount);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_SUCCESS);
		pay.setType(payType);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 4);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		content = "WANBA";
		int first = 0;
		if (goldAmount == 300) {
			// 月卡
			String msgs = "充值成功，您成功购买了月卡";
			ret.put("msg", msgs);
			userAward.setId208(100);
			AwardBIZ.updateUserAward(username, userAward, true);

			// user.setPay(user.getPay() + goldAmount);
			// save
			// UserBIZ.updateUserInfo(user, true);
			PayBIZ.pay(payType, goldAmount, user, content, request);
			PayBIZ.payAward(platform, username, goldAmount, request);
		} else if (goldAmount == 900) {
			// 成长基金
			String msgs = "充值成功，您成功购买了成长基金";
			ret.put("msg", msgs);
			userAward.setId209(1);
			AwardBIZ.updateUserAward(username, userAward, true);

			// user.setPay(user.getPay() + goldAmount);
			// save
			// UserBIZ.updateUserInfo(user, true);
			PayBIZ.pay(payType, goldAmount, user, content, request);
			PayBIZ.payAward(platform, username, goldAmount, request);

		} else {
			// goldAmount 游戏中充的元宝数
			PayBIZ.pay(payType, goldAmount, user, content, request);

			// log
			// GoldLogger.log(username, 0l, GoldLogger.ACTION_ADD,
			// UserPayOrder.TYPE_WANBA + zoneIdI - 1, 0, wanba_score * 10, 1,
			// GoldLogger.STATUS_OK, content);

			first = PayBIZ.payAward(platform, username, goldAmount, request);
			// EventBIZ.incPayInfo(username, "充值成功");
			// 返回要充的宝石的数量
			ret.put("code", 0);
			String msgs = "充值成功，您成功充值" + goldAmount + "星钻";
			if (first == 1) {
				msgs = msgs + "，并获得了首充大礼。";
			}
			ret.put("msg", msgs);
		}

		int level = UserBIZ.userLevel(user.getExp()).getLevel();
		UserMission m = MissionBIZ.currentMission(username, level);
		int mid = 0;
		if (m != null) {
			mid = m.getId();
		}
		content = "lv" + level + ",m" + mid;
		if (first == 1) {
			goldAmount = goldAmount * 2;
		}
		GoldLogger
				.log(username, 0l, GoldLogger.ACTION_ADD, payType, 0,
						goldAmount, wanba_score, GoldLogger.STATUS_OK, content,
						request);

		// UserInfo user = UserBIZ.user(username);

		JSONObject vars = new JSONObject();
		vars.put("fgold", user.getGold());
		vars.put("fmoney", user.getMoney());
		vars.put("pay", user.getPay());

		ret.put("vars", vars);
		ret.put("firstPay", 1);

		return View.showJson(request, response, ret);
	}

	public static final Map<Integer, Object> LIEBAO_PRODUCT_MAP = new HashMap<Integer, Object>();

	static {
		LIEBAO_PRODUCT_MAP.put(10, new String[] { "10xingzuan", "100", "10",
				"10星钻" }); // 商品Id, 金额（单位分）, 商品数量, 描述
		LIEBAO_PRODUCT_MAP.put(50, new String[] { "50xingzuan", "500", "50",
				"50星钻" });
		LIEBAO_PRODUCT_MAP.put(100, new String[] { "100xingzuan", "1000",
				"100", "100星钻" });
		LIEBAO_PRODUCT_MAP.put(500, new String[] { "550xingzuan", "5000",
				"550", "550星钻" });
		LIEBAO_PRODUCT_MAP.put(1000, new String[] { "1200xingzuan", "10000",
				"1200", "1200星钻" });
		LIEBAO_PRODUCT_MAP.put(2000, new String[] { "2500xingzuan", "20000",
				"2500", "2500星钻" });
		LIEBAO_PRODUCT_MAP.put(5000, new String[] { "6500xingzuan", "50000",
				"6500", "6500星钻" });
		LIEBAO_PRODUCT_MAP.put(900, new String[] { "chengzhangjijin", "9000",
				"0", "成长基金" });
		LIEBAO_PRODUCT_MAP
				.put(300, new String[] { "yueka", "3000", "0", "月卡" });
	}

	@RequestMapping(value = "liebao")
	public String payLiebao(HttpServletRequest request,
			HttpServletResponse response) throws JSONException, IOException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}

		// 获取平台API实例
		int platform = SnsApi.PLATFORM_LIEBAO;
		Long username = sso.getUsername();
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsInfo == null) {
			ret.put("code", 2);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}

		UserInfo user = UserBIZ.user(username);
		request.setAttribute("user", user);
		String amount = request.getParameter("amount");
		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}
		Integer fee = Integer.parseInt(amount);

		String[] productArr = (String[]) LIEBAO_PRODUCT_MAP.get(fee);

		// 商品Id
		String productId = productArr[0];
		// 获取描述
		String productDesc = productArr[3];
		// 金额
		int money = Integer.parseInt(productArr[1]);
		String moneyStr = new DecimalFormat("#########.00")
				.format(money * 0.01);

		Long orderId = UuidBIZ.getUUID(username) * 10 + 1;

		// 插入数据库
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(orderId);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(fee);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason("alipay");
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_LIEBAO);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		dao.insert(username, pay);

		String backUrl = ReqUtil.getUrl(request, "pay/cb/liebao.do", "", true);
		// 生成订单
		HashMap<String, String> params = new HashMap<String, String>();
		String[] tokenArr = snsInfo.getToken().split(Symbols.UNDERLINE);
		ret.put("access_token", tokenArr[1]);
		ret.put("product_id", productId);
		ret.put("payload", orderId.toString());
		ret.put("unit", 1 + "");
		ret.put("notify_url", backUrl);
		ret.put("game_name", "海国战纪");
		ret.put("game_icon", "");

		ret.put("order_name", productDesc);
		ret.put("money", moneyStr);
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		HashMap<String, String> map = client.getPayUrl(null, params);
		ret.put("client_id", map.get("client_id"));
		ret.put("code", 0);

		return View.showJson(request, response, ret);
	}


	public static final Map<Integer, Object> QIPA_PRODUCT_MAP = new HashMap<Integer, Object>();

	static {
		QIPA_PRODUCT_MAP.put(3000, new String[] { "3000xingzuan", "600", "3000", "3000星钻" }); // 商品Id, 金额（单位分）, 商品数量, 描述
		QIPA_PRODUCT_MAP.put(10000, new String[] { "10000xingzuan", "2000", "10000", "10000星钻" });
		QIPA_PRODUCT_MAP.put(5000, new String[] { "25000xingzuan", "25000", "5000", "25000星钻" });
		QIPA_PRODUCT_MAP.put(10000, new String[] { "50000xingzuan", "50000", "10000", "50000星钻" });
		QIPA_PRODUCT_MAP.put(250000, new String[] { "250000xingzuan", "250000", "50000", "250000星钻" });
		QIPA_PRODUCT_MAP.put(500000, new String[] { "500000xingzuan", "500000", "100000", "500000星钻" });
		QIPA_PRODUCT_MAP.put(1000000, new String[] { "1000000xingzuan", "1000000", "200000", "1000000星钻" });
//		QIPA_PRODUCT_MAP.put(900, new String[] { "chengzhangjijin", "9000", "0", "成长基金" });
//		QIPA_PRODUCT_MAP.put(300, new String[] { "yueka", "3000", "0", "月卡" });
	}

	@RequestMapping(value = "qp")
	public String payQipa(HttpServletRequest request,
						  HttpServletResponse response) throws JSONException, IOException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}

		// 获取平台API实例
		int platform = SnsApi.PLATFORM_QIPA;
		Long username = sso.getUsername();
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsInfo == null) {
			ret.put("code", 2);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}

		UserInfo user = UserBIZ.user(username);
		request.setAttribute("user", user);
		String amount = request.getParameter("amount");
		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}
		Integer fee = Integer.parseInt(amount);
		UserAward userAward = AwardBIZ.getAward(username);
		if (userAward == null) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}
		if ("300".equals(amount) || "300".equals(amount)) {
//			if (userAward.getId208() > 0) {
//				ret.put("code", 2);
//				ret.put("msg", "当前已购买月卡了，不能重复购买");
//				return View.showJson(request, response, ret);
//			}
		}

		if ("900".equals(amount) || "900".equals(amount)) {
			if (userAward.getId209() > 0) {
				ret.put("code", 2);
				ret.put("msg", "当前已购买成长基金了，不能重复购买");
				return View.showJson(request, response, ret);
			}
		}
		String[] productArr = (String[]) QIPA_PRODUCT_MAP.get(fee);

		// 商品Id
		String productId = productArr[0];
		// 获取描述
		String productDesc = productArr[3];
		// 金额
		int money = Integer.parseInt(productArr[1]);
		String moneyStr = new DecimalFormat("#########.00")
				.format(money * 0.01);

		Long orderId = UuidBIZ.getUUID(username)*10+1;

		// 插入数据库
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(orderId);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(fee);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason("qipa");
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(platform);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		dao.insert(username, pay);

		String backUrl = ReqUtil.getUrl(request, "pay/cb/liebao.do", "", true);
		// 生成订单
		HashMap<String, String> params = new HashMap<String, String>();
		String[] tokenArr = snsInfo.getToken().split(Symbols.UNDERLINE);

		ret.put("cpbill", orderId.toString());
		ret.put("productid", productId);
		ret.put("productname", productDesc);
		ret.put("productdesc", productDesc);
		ret.put("serverid", 1); // TODO hexl 需要添加serverid信息
		ret.put("servername", "server1");
		ret.put("roleid", user.getUsername().toString());
		ret.put("rolename", user.getNickname());
		ret.put("rolelevel", user.getExp());
		ret.put("price", money / 100.0);
		ret.put("extension", amount + "_" + productId);
//
//		ret.put("access_token", tokenArr[1]);
//		ret.put("product_id", productId);
//		ret.put("payload", orderId.toString());
//		ret.put("unit", 1 + "");
//		ret.put("notify_url", backUrl);
//		ret.put("game_name", "海国战纪");
//		ret.put("game_icon", "");
//
//		ret.put("order_name", productDesc);
//		ret.put("money", moneyStr);
//		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
//		HashMap<String, String> map = client.getPayUrl(null, params);
//		ret.put("client_id", map.get("client_id"));
		ret.put("code", 0);

		return View.showJson(request, response, ret);
	}
	@RequestMapping(value = "g4399")
	public String payG4399(HttpServletRequest request,
			HttpServletResponse response) throws JSONException, IOException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}
		Long username = sso.getUsername();
		String num = request.getParameter("amount");
		if (num.equals("900")) {
			num = "90";
		}
		if (!Checking.isNumeric(num)) {
			ret.put("code", 2);
			ret.put("msg", "参数错误");
			return View.showJson(request, response, ret);
		}

		Long oid = UuidBIZ.getUUID(username) * 10 + 1;
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", oid.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		Integer amount = Integer.parseInt(num);
		// 生成支付订单
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(amount);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_G4399);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 4);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		int platform = SnsApi.PLATFORM_G4399;
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		HashMap<String, String> params = new HashMap<String, String>();
		// String userId = AccountBIZ.getOpenid(platform, username);
		SnsUserInfo snsUserInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsUserInfo == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}
		String userId = snsUserInfo.getUsername();
		String userName = snsUserInfo.getNickname();
		String time = System.currentTimeMillis() / 1000 + "";
		String backurl = ReqUtil.getUrl(request, "index.html",
				View.keep(request), false);
		params.put("time", time);
		params.put("userId", userId);
		params.put("userName", userName);
		params.put("money", num);
		params.put("mark", oid + "");
		params.put("ext", oid + "");
		params.put("goodsId", "1");
		params.put("goodsName", "xingzuan");
		params.put("server", "1");
		params.put("gameUrl", backurl);
		// params.put("gameUrl", "http://");
		HashMap<String, String> payUrl = client.getPublicUrl(null, params);
		ret.put("code", 0);
		ret.put("msg", "ok");
		ret.put("url", payUrl.get("url"));
		return View.showJson(request, response, ret);
	}

	@RequestMapping(value = "aiaiu")
	public String payAiaiu(HttpServletRequest request,
			HttpServletResponse response) throws JSONException, IOException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}
		Long username = sso.getUsername();
		String num = request.getParameter("amount");
		if (num.equals("900")) {
			num = "90";
		}
		if (!Checking.isNumeric(num)) {
			ret.put("code", 2);
			ret.put("msg", "参数错误");
			return View.showJson(request, response, ret);
		}

		Long oid = UuidBIZ.getUUID(username) * 10 + 1;
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", oid.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		Integer amount = Integer.parseInt(num);
		// 生成支付订单
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(amount);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_AIAIU);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 4);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		int platform = SnsApi.PLATFORM_WIFIWIFE;
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		SnsUserInfo snsUserInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsUserInfo == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}
		String open_id = snsUserInfo.getUsername();
		// String access_token = snsUserInfo.getSrc();
		String token = snsUserInfo.getToken();
		String s = "\\|";
		String[] arry = token.split(s);
		String access_token = arry[1];
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("open_id", open_id);
		params.put("access_token", access_token);
		params.put("ext", username + "");
		params.put("price", amount * 10 + "");
		params.put("bill_no", oid + ""); // 订单号
		String backurl = ReqUtil.getUrl(request, "index.html",
				View.keep(request), false);
		// params.put("return_url", "http://");
		params.put("return_url", backurl);
		HashMap<String, String> payUrl = client.getPayUrl(null, params);
		ret.put("code", 0);
		ret.put("msg", "ok");
		ret.put("url", payUrl.get("url"));
		return View.showJson(request, response, ret);
	}

	/**
	 * qq阅读
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws JSONException
	 * @throws IOException
	 */
	@RequestMapping(value = "qqread")
	public String qqRead(HttpServletRequest request,
			HttpServletResponse response) throws JSONException, IOException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}
		Long username = sso.getUsername();
		String num = request.getParameter("amount");
		if (num.equals("900")) {
			num = "90";
		}
		if (!Checking.isNumeric(num)) {
			ret.put("code", 2);
			ret.put("msg", "参数错误");
			return View.showJson(request, response, ret);
		}
		Integer amount = Integer.parseInt(num);

		Long oid = UuidBIZ.getUUID(username) * 10 + 1;
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", oid.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		// 生成支付订单
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(amount);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_QQREAD);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 4);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		int platform = SnsApi.PLATFORM_QQYD;
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		String game_money = amount * 10 + "";
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("game_money", game_money);
		params.put("money", amount + "");
		params.put("orderid", oid + "");
		params.put("serverid", sid + "");
		HashMap<String, String> payUrl = client.getPayUrl(null, params);
		if (payUrl == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		ret.put("code", 0);
		ret.put("msg", "ok");
		ret.put("url", payUrl.get("url"));
		return View.showJson(request, response, ret);
	}

	/**
	 * 起点阅读
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws JSONException
	 * @throws IOException
	 */
	@RequestMapping(value = "qdread")
	public String qdRead(HttpServletRequest request,
			HttpServletResponse response) throws JSONException, IOException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}
		Long username = sso.getUsername();
		String num = request.getParameter("amount");
		if (num.equals("900")) {
			num = "90";
		}
		if (!Checking.isNumeric(num)) {
			ret.put("code", 2);
			ret.put("msg", "参数错误");
			return View.showJson(request, response, ret);
		}
		Integer amount = Integer.parseInt(num);

		Long oid = UuidBIZ.getUUID(username) * 10 + 1;
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", oid.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		// 生成支付订单
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(amount);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_QDREAD);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 4);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		int platform = SnsApi.PLATFORM_QDYD;
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		String game_money = amount * 10 + "";
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("game_money", game_money);
		params.put("money", amount + "");
		params.put("orderid", oid + "");
		params.put("serverid", sid + "");
		HashMap<String, String> payUrl = client.getPayUrl(null, params);
		if (payUrl == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		ret.put("code", 0);
		ret.put("msg", "ok");
		ret.put("url", payUrl.get("url"));
		return View.showJson(request, response, ret);
	}

	@RequestMapping(value = "mg/wechat")
	public String payMGWechat(HttpServletRequest request,
			HttpServletResponse response) throws JSONException, IOException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}
		Long username = sso.getUsername();
		String num = request.getParameter("amount");
		if (num.equals("900")) {
			num = "90";
		}
		if (!Checking.isNumeric(num)) {
			ret.put("code", 2);
			ret.put("msg", "参数错误");
			return View.showJson(request, response, ret);
		}
		Integer amount = Integer.parseInt(num);

		Long oid = UuidBIZ.getUUID(username) * 10 + 1;
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", oid.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		// 生成支付订单
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent("mg");
		pay.setCreatetime(now);
		pay.setFee(amount);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_MG_WECHAT);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 4);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		String backUrl = ReqUtil.getUrl(request, "pay/cb/mg/wechat.do", "",
				true);

		int platform = SnsApi.PLATFORM_MIGUA_NEW;

		GameSnsRestClient cl = (GameSnsRestClient) SpringHelper
				.getBean("mgNewSnsRestClient");

		String openId = AccountBIZ.getOpenid(platform, username);
		ret.put("appId", cl.getAppId());
		ret.put("orderId", oid.toString());
		ret.put("subject", SysParam.getSiteCurrency());
		ret.put("money", amount + "");
		ret.put("callbackUrl", backUrl);
		ret.put("openId", openId);

		ret.put("code", 0);
		ret.put("msg", "ok");

		return View.showJson(request, response, ret);
	}

	/**
	 * 1758微游戏
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 * @throws JSONException
	 */
	@RequestMapping(value = "wyx1758")
	public String wyx1758Game(HttpServletRequest request,
			HttpServletResponse response) throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}

		// 获取商品数量
		String amount = request.getParameter("amount");
		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}

		// 获取平台API实例
		Long username = sso.getUsername();
		UserInfo user = UserBIZ.user(username);
		request.setAttribute("user", user);

		Integer fee = Integer.parseInt(amount);
		String itemCode = null;
		switch (fee) {
		case 5:
			itemCode = "105958";
			break;
		case 10:
			itemCode = "105959";
			break;
		case 50:
			itemCode = "105960";
			break;
		case 100:
			itemCode = "105961";
			break;
		case 200:
			itemCode = "105962";
			break;
		case 500:
			itemCode = "105963";
			break;
		case 1000:
			itemCode = "105363";
			break;
		}

		if (itemCode == null || itemCode.length() <= 0) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		Long oid = UuidBIZ.getUUID(username) * 10 + 1;

		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", oid.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		// 插入数据库
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(fee);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason("alipay");
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_WYX1758);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		dao.insert(username, pay);

		int platform = SnsApi.PLATFORM_WYX1758;
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsInfo == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}

		ISnsRestClient client = SnsApi.getSnsApiClient(platform);

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("txId", oid + "");
		params.put("state", oid + "");
		params.put("itemCode", itemCode);

		HashMap<String, String> result = client.getPayUrl(null, params);
		if (result.get("payUrl") != null) {
			ret.put("payUrl", result.get("payUrl"));
		}
		ret.put("code", 0);
		ret.put("msg", "");
		return View.showJson(request, response, ret);
	}

	/**
	 * 乐天时代
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 * @throws JSONException
	 */
	@RequestMapping(value = "ltsd")
	public String ltsd(HttpServletRequest request, HttpServletResponse response)
			throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}
		Long username = sso.getUsername();
		int platform = SnsApi.PLATFORM_LTSD;
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsInfo == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		String amount = request.getParameter("amount");
		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}
		String returnback = request.getParameter("returnback");

		if (Checking.isNullorBlank(returnback)) {
			ret.put("code", 1);
			ret.put("msg", "充值失败重新登陆能解决此问题");
			return View.showJson(request, response, ret);
		}
		returnback = URLDecoder.decode(returnback, "utf-8");

		Integer fee = Integer.parseInt(amount);
		Long orderId = UuidBIZ.getUUID(username) * 10 + 1;// 生成内部订单号
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", orderId.toString());

		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(orderId);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(fee);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_LTSD);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		String token = snsInfo.getToken();
		String s = "\\|";
		String[] arry = token.split(s);
		String uid = arry[1];
		String userid = uid.toString();
		String money = fee * 100 + "";
		// 随机字符串
		String ALLCHAR = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
		StringBuffer sb = new StringBuffer();
		Random random = new Random();
		for (int i = 0; i < 32; i++) {
			sb.append(ALLCHAR.charAt(random.nextInt(ALLCHAR.length())));
		}
		String r = sb.toString();
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("apporder", orderId + "");
		params.put("pid", orderId + "");
		params.put("pname", "星钻");
		params.put("r", r);
		params.put("price", money);
		params.put("redirect", returnback);
		params.put("userid", userid);
		params.put("ext", orderId + "");
		HashMap<String, String> data = client.getPayUrl(null, params);
		ret.put("payUrl", data.get("payUrl"));
		ret.put("code", 0);
		ret.put("msg", "success");
		return View.showJson(request, response, ret);
	}

	@RequestMapping(value = "veryhot")
	public String vreyhot(HttpServletRequest request,
			HttpServletResponse response) throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}
		Long username = sso.getUsername();
		int platform = SnsApi.PLATFORM_VERYHOT;
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsInfo == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		String amount = request.getParameter("amount");
		if (amount.equals("900")) {
			amount = "90";
		}
		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}
		Integer fee = Integer.parseInt(amount);
		Long orderId = UuidBIZ.getUUID(username) * 10 + 1;// 生成内部订单号
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", orderId.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(orderId);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(fee);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_VERYHOT);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		com.ssd.framework.apiclient.impl.veryhot.SnsRestClient cl = (com.ssd.framework.apiclient.impl.veryhot.SnsRestClient) SpringHelper
				.getBean("veryhotSnsRestClient");

		String openId = AccountBIZ.getOpenid(platform, username);
		ret.put("appId", cl.getAppId());
		ret.put("orderId", orderId.toString());
		ret.put("subject", SysParam.getSiteCurrency());
		ret.put("money", fee + "");
		// ret.put("callbackUrl", backUrl);
		ret.put("openId", openId);

		// ret.put("payUrl", data.get("payUrl"));
		ret.put("code", 0);
		ret.put("msg", "success");
		return View.showJson(request, response, ret);
	}

	/**
	 * qqgame
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 * @throws JSONException
	 */
	@RequestMapping(value = "qqgame")
	public String qqgame(HttpServletRequest request,
			HttpServletResponse response) throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}
		Long username = sso.getUsername();
		int platform = SnsApi.PLATFORM_QQWYXGAME;
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsInfo == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		String amount = request.getParameter("amount");
		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}
		Integer fee = Integer.parseInt(amount);
		String token = snsInfo.getToken();
		String[] array = token.split("\\|");
		String uid = array[0];
		String qbopenkey = "";
		if (array[3] != null && !array[3].equals("-1")) {
			qbopenkey = array[3];
		}
		String payToken = "";
		if (array[4] != null && !array[4].equals("-1")) {
			payToken = array[4];

		}
		HashMap<String, String> data = client.getPayUrl(null, null);
		if (data == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
		}
		ret.put("appid", data.get("appId"));
		ret.put("payValue", fee * 10 + "");
		ret.put("qbopenkey", qbopenkey);
		ret.put("payToken", payToken);
		ret.put("qbopenid", uid + "");
		ret.put("payItem", fee + "*1");
		ret.put("payInfo", "星钻*" + fee * 10 + "*1");
		ret.put("reqTime", data.get("reqTime"));
		ret.put("code", 0);
		ret.put("msg", "success");
		return View.showJson(request, response, ret);
	}

	/**
	 * 9g
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws JSONException
	 * @throws IOException
	 */
	@RequestMapping(value = "wyx9g")
	public String wyx9g(HttpServletRequest request, HttpServletResponse response)
			throws JSONException, IOException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}
		Long username = sso.getUsername();
		String num = request.getParameter("amount");
		if (num.equals("900")) {
			num = "90";
		}
		if (!Checking.isNumeric(num)) {
			ret.put("code", 2);
			ret.put("msg", "参数错误");
			return View.showJson(request, response, ret);
		}
		Integer amount = Integer.parseInt(num);

		Long oid = UuidBIZ.getUUID(username) * 10 + 1;
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", oid.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		// 生成支付订单
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(amount);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_WYX9G);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 4);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		int platform = SnsApi.PLATFORM_WYX9G;
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		String token = snsInfo.getToken();
		String uid = snsInfo.getUsername();
		String product = amount * 10 + "星钻";
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("product", product);
		params.put("money", amount * 100 + "");
		params.put("orderid", oid + "");
		params.put("token", token);
		params.put("uid", username + "");
		HashMap<String, String> payUrl = client.getPayUrl(null, params);
		if (payUrl == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		ret.put("action", payUrl.get("action"));
		ret.put("spid", payUrl.get("spid"));
		ret.put("sign", payUrl.get("sign"));
		ret.put("product", product);
		ret.put("money", amount * 100 + "");
		ret.put("orderid", oid + "");
		ret.put("token", token);
		ret.put("uid", uid + "");
		ret.put("code", 0);
		ret.put("msg", "");
		return View.showJson(request, response, ret);
	}

	@RequestMapping(value = "cgame")
	public String cGame(HttpServletRequest request, HttpServletResponse response)
			throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}
		Long username = sso.getUsername();
		int platform = SnsApi.PLATFORM_CGAME;
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsInfo == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		String amount = request.getParameter("amount");
		if (amount.equals("900")) {
			amount = "90";
		}
		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}
		Integer fee = Integer.parseInt(amount) * 100;
		Long orderId = UuidBIZ.getUUID(username) * 10 + 1;// 生成内部订单号
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", orderId.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(orderId);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(Integer.parseInt(amount) * 10);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_CGAME);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		String openId = AccountBIZ.getOpenid(platform, username);
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("userid", openId);
		params.put("money", fee + "");
		// params.put("money", "100");
		params.put("outorderid", orderId + "");
		params.put("serverid", "0");
		params.put("role", username + "");
		HashMap<String, String> result = client.getPayUrl(null, params);
		String payUrl = result.get("url");
		if (result == null || payUrl == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，充值失败");
			return View.showJson(request, response, ret);
		}
		ret.put("code", 0);
		ret.put("msg", "success");
		ret.put("url", payUrl);
		return View.showJson(request, response, ret);
	}

	@RequestMapping(value = "xyhd")
	public String xyhl(HttpServletRequest request, HttpServletResponse response)
			throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}
		Long username = sso.getUsername();
		int platform = SnsApi.PLATFORM_XYHL;
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsInfo == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}
		String amount = request.getParameter("amount");

		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}
		String returnback = request.getParameter("returnback");
		if (Checking.isNullorBlank(returnback)) {
			ret.put("code", 1);
			ret.put("msg", "充值失败重新登陆能解决此问题");
			return View.showJson(request, response, ret);
		}
		System.out.println("xyhl**********************returnback=" + returnback
				+ ",amount=" + amount);
		returnback = URLDecoder.decode(returnback, "utf-8");
		System.out.println("xyhl********decode****************returnback="
				+ returnback + ",amount=" + amount);
		// amount = 10+"";//测试
		String product = Integer.parseInt(amount) + "星钻";

		Integer fee = Integer.parseInt(amount);
		Long orderId = UuidBIZ.getUUID(username) * 10 + 1;// 生成内部订单号
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", orderId.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		String money = fee * 10 + "";

		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(orderId);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(fee);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_XYHL);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		String backUrl = ReqUtil.getUrl(request, "pay/cb/xyhd.do", "", true);
		SnsRestClient xyhlclient = (SnsRestClient) SpringHelper
				.getBean("xyhlSnsRestClient");

		String openId = AccountBIZ.getOpenid(platform, username);

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("subject", product);
		params.put("body", product);
		params.put("notify_url", backUrl);
		params.put("amount", money);
		params.put("app_user_id", openId);
		params.put("app_order_id", orderId + "");
		params.put("app_id", xyhlclient.getAppId());
		params.put("sign_type", "md5");
		params.put("ext", orderId + "");
		// "subject": "商品名,字符串，必填",
		// "body": "商品描述,字符串，必填",
		// "amount": "价格，单位分,整型，必填",
		// "notify_url": "通知地址，字符串，必填",
		// "app_user_name": "应用用户名,字符串",
		// "app_user_id": "应用用户ID（请用新游登录open_id）,字符串，必填",
		// "app_order_id": "应用订单号,字符串，必填",
		// "app_id": "应用ID,字符串，必填",
		// "imei": "IMEI,字符串",
		// "mac_address": "MAC地址,字符串",
		// "ext": "扩展信息，开发者选填，回调开发者服务器使用",
		// 'sign_type': '签名方式，字符串，可选参数，支持rsa和md5, 默认为rsa，必填'
		// "sign": "签名，字符串，与支付宝相同的签名方式，具体见后面的签名算法描述，必填"
		HashMap<String, String> result = xyhlclient.getPayUrl(null, params);
		System.out
				.println("pay**************xyhl***************************result="
						+ result);
		if (result == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，充值失败");
			return View.showJson(request, response, ret);
		}
		String payUrl = result.get("payUrl");
		if (payUrl == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，充值失败");
			return View.showJson(request, response, ret);
		}
		HashMap<String, String> paramRedirect = new HashMap<String, String>();
		params.put("redirect_url", returnback);

		payUrl = payUrl + "?redirect_url=" + returnback;
		ret.put("code", 0);
		ret.put("msg", "success");
		ret.put("url", payUrl);
		return View.showJson(request, response, ret);
	}

	@RequestMapping(value = "ququ")
	public String ququGame(HttpServletRequest request,
			HttpServletResponse response) throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}
		Long username = sso.getUsername();
		int platform = SnsApi.PLATFORM_QUQU;
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsInfo == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}
		String amount = request.getParameter("amount");

		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}

		// amount = 10+"";//测试
		String product = Integer.parseInt(amount) + "星钻";

		Integer fee = Integer.parseInt(amount);
		Long orderId = UuidBIZ.getUUID(username) * 10 + 1;// 生成内部订单号
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", orderId.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		String money = fee / 10 + "";

		if (fee <= 0) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}

		if (money.equals("0")) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}

		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(orderId);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(fee);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_QUQU);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		String backUrl = ReqUtil.getUrl(request, "pay/cb/ququ.do", "", true);
		com.ssd.framework.apiclient.impl.ququ.SnsRestClient ququclient = (com.ssd.framework.apiclient.impl.ququ.SnsRestClient) SpringHelper
				.getBean("ququSnsRestClient");

		String openId = AccountBIZ.getOpenid(platform, username);

		// game=$game&server=$server&user=$user&money=$money&gameparam=$gameparam&goodsname=$goodsname&token=$token

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("server", sid + "");
		params.put("user", openId);
		params.put("money", money);// 元
		params.put("goodsname", product);
		params.put("gameparam", orderId + "");
		HashMap<String, String> result = ququclient.getPayUrl(null, params);

		System.out
				.println("pay**************ququ***************************result="
						+ result);
		if (result == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，充值失败");
			return View.showJson(request, response, ret);
		}
		String payUrl = result.get("url");
		if (payUrl == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，充值失败");
			return View.showJson(request, response, ret);
		}

		ret.put("code", 0);
		ret.put("msg", "success");
		ret.put("url", payUrl);
		return View.showJson(request, response, ret);
	}

	@RequestMapping(value = "in")
	public String insidePay(HttpServletRequest request,
			HttpServletResponse response) throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}
		Long username = sso.getUsername();
		UserInfo user = UserBIZ.user(username);
		if (user == null) {
			ret.put("code", 1);
			ret.put("msg", "不存在此用户");
			return View.showJson(request, response, ret);
		}
		int platform = sso.getPlatform().intValue();
		if (platform != 0) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}
		// SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		// if (snsInfo == null) {
		// ret.put("code", 1);
		// ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
		// return View.showJson(request, response, ret);
		// }
		ISnsRestClient client = SnsApi.getSnsApiClient(platform);
		String amount = request.getParameter("num");

		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}
		int goldAmount = 0;
		if ("10".equals(amount)) {
			goldAmount = 10;
		} else if ("50".equals(amount)) {
			goldAmount = 50;
		} else if ("100".equals(amount)) {
			goldAmount = 100;
		} else if ("500".equals(amount)) {
			goldAmount = 550;
		} else if ("1000".equals(amount)) {
			goldAmount = 1200;
		} else if ("2000".equals(amount)) {
			goldAmount = 2500;
		} else if ("5000".equals(amount)) {
			goldAmount = 6500;
		} else if ("900".equals(amount)) {
			goldAmount = 900;
		} else if ("300".equals(amount)) {
			goldAmount = 300;
		} else {
			goldAmount = Integer.parseInt(amount);
		}

		UserAward userAward = AwardBIZ.getAward(username);
		if (userAward == null) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}
		// 创建订单
		String content = amount + "inside";

		int firstPay = PayBIZ.addPayAwards(goldAmount, user, userAward,
				content, 0, 0, ret, request);

		System.out.println("内部充值：amount=" + goldAmount);
		ret.put("code", 0);
		ret.put("msg", "充值成功");
		// ret.put("url", payUrl);
		return View.showJson(request, response, ret);
	}
	
	@RequestMapping(value = "layabox")
	public String layaboxGame(HttpServletRequest request,
			HttpServletResponse response) throws IOException, JSONException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			return ViewBIZ.gotoLogin(request);
		}
		Long username = sso.getUsername();
		int platform = SnsApi.PLATFORM_LAYABOX;
		SnsUserInfo snsInfo = AccountBIZ.getOnlineToken(platform, username);
		if (snsInfo == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉,您的平台认证失效了,请重新登录游戏");
			return View.showJson(request, response, ret);
		}
		String amount = request.getParameter("amount");

		if (!Checking.isNumeric(amount)) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}

//		 amount = 10+"";//测试
		String product = Integer.parseInt(amount) + "星钻";

		Integer fee = Integer.parseInt(amount);
		Long orderId = UuidBIZ.getUUID(username) * 10 + 1;// 生成内部订单号
		// 向portal注册
		Integer sid = (Integer) SpringHelper.getBean("siteServer");
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("sid", sid.toString());
		req.put("oid", orderId.toString());
		ISnsRestClient portal = (ISnsRestClient) SpringHelper
				.getBean("portalSnsRestClient");
		HashMap<String, String> reg = portal.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		String money = fee / 10 + "";

		if (fee <= 0) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}

		if (money.equals("0")) {
			ret.put("code", 1);
			ret.put("msg", "请选择面额");
			return View.showJson(request, response, ret);
		}

		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(orderId);
		pay.setContent(Symbols.EMPTY);
		pay.setCreatetime(now);
		pay.setFee(fee);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(platform);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}

		ret.put("code", 0);
		ret.put("msg", "success");
		JSONObject orderInfo = new JSONObject();
		orderInfo.put("order_id", orderId);
		orderInfo.put("goods_name", product);
		orderInfo.put("amount", (fee *10));
		orderInfo.put("goods_desc", product);
		orderInfo.put("serverId", sid);
		orderInfo.put("params", orderId);
		ret.put("orderInfo", orderInfo);
		
		return View.showJson(request, response, ret);
	}
	
	@RequestMapping(value = "alipay")
	public String alipay(HttpServletRequest request,
			HttpServletResponse response) throws JSONException, IOException {
		JSONObject ret = new JSONObject();
		SSOInfo sso = SessionBIZ.getSession(request);
		if (!SessionBIZ.isLogin(sso)) {
			ret.put("code", 1);
			ret.put("msg", "鉴权失败,请重新登录");
			return View.showJson(request, response, ret);
		}
		Long username = sso.getUsername();
		String num = request.getParameter("amount");
		
		if (!Checking.isNumeric(num)) {
			ret.put("code", 2);
			ret.put("msg", "参数错误");
			return View.showJson(request, response, ret);
		}
		Integer amount = (int)(Integer.parseInt(num)/100);

		Long oid = UuidBIZ.getUUID(username) * 10 + 1;
		ISnsRestClient client = (ISnsRestClient) SpringHelper
				.getBean("alipaySnsRestClient");
		
		HashMap<String, String> req = new HashMap<String, String>();
		req.put("orderid", oid.toString());
		req.put("subject", SysParam.getSiteCurrency());
		req.put("money", amount.toString());
//		req.put("money", "0.01");
		String backUrl = ReqUtil.getUrl(request, "pay/cb/alipay.do", "",
				true);
		req.put("callbackurl", backUrl);
		
		HashMap<String, String> reg = client.getPayUrl(null, req);
		if (reg == null) {
			ret.put("code", 1);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		// 生成支付订单
		Date now = new Date();
		UserPayOrder pay = new UserPayOrder();
		pay.setId(oid);
		pay.setContent("alipay");
		pay.setCreatetime(now);
		pay.setFee(amount);
		pay.setMobile(0l);
		pay.setModifytime(now);
		pay.setReason(Symbols.EMPTY);
		pay.setStatus(UserPayOrder.STATUS_NEW);
		pay.setType(UserPayOrder.TYPE_MG_WECHAT);
		pay.setUsername(username);
		UserPayOrderJdbcDAO dao = (UserPayOrderJdbcDAO) SpringHelper
				.getBean("userPayOrderJdbcDAO");
		boolean ok = dao.insert(username, pay);
		if (!ok) {
			ret.put("code", 4);
			ret.put("msg", "抱歉，订单生成失败");
			return View.showJson(request, response, ret);
		}
		ret.put("url", reg.get("url"));

		ret.put("code", 0);
		ret.put("msg", "ok");

		return View.showJson(request, response, ret);
	}
}
