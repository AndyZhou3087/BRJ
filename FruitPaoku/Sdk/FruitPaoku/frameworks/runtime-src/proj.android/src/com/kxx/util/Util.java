package com.kxx.util;

import java.io.IOException;

import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lib.Cocos2dxLuaJavaBridge;
import org.cocos2dx.lua.AppActivity;
import org.json.JSONException;
import org.json.JSONObject;

import com.og.gameconfig.OGLoadParamsCallBack;
import com.og.unite.charge.OGSdkIPayCenter;
import com.og.unite.main.OGSdkPlatform;
import com.umeng.analytics.game.UMGameAgent;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.util.Log;


/**
 * ������
 * @author ChengJH
 *
 */
public class Util {
	public final static  String SUCCESS_RES = "success";//
	public final static  String FAIL_RES = "fail";
	
	public static final String paramKey1 = "gameinit";
	
	private static Cocos2dxActivity curActivity = null;
	private static int resultCallback = 0;
	private static int giftCallback = 0;
	private static int ParamsCallBack = 0;
	
	private static Activity context = null;	
	
	
	public static void initSDK(Cocos2dxActivity act)
	{
		curActivity = act;
		context = act;
		OGThranPay.init(act);
//		curActivity.runOnUiThread(new Runnable() {
//			
//			@Override
//			public void run() {
//				// TODO Auto-generated method stub
//				
//				getconfigData();
//			}
//		});
	}
	
	
	public static void getconfigData()
	{
        OGThranPay.getShopList();
	}
	
	/**
	 * lua�����֧��
	 * @param userId �û�id
	 * @param goodsId ��Ʒid����Ӧ��̨����id��
	 * @param orderId ����id
	 */
	public static void pay(final String goodsId,final String orderId,final int callFunc)
	{
		curActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				resultCallback = callFunc;
				String type = OGThranPay.checkGoodsType(goodsId);
				String uuid = Utils.UUID();
				OGSdkPlatform.payUI(context, type, uuid, goodsId, orderId, uuid, OGSdkIPayResultCallback);
				
			}
		});
		
	}
	
	/**
	 * ֧������ص�
	 */
	private static OGSdkIPayCenter OGSdkIPayResultCallback = new OGSdkIPayCenter() {
		
		//������Ϸ�ڷ���
		private void callGameFunc(final String result){
			curActivity.runOnGLThread(new Runnable() {
				@Override
				public void run() {
					Cocos2dxLuaJavaBridge.callLuaFunctionWithString(resultCallback, result);
					Cocos2dxLuaJavaBridge.releaseLuaFunction(resultCallback);
				}
			});
		}
		
		@Override
		public void onPayResult(int resultCode, String resultInfo) {
			// TODO Auto-generated method stub
			
			if (resultCode == 0)
			{
				callGameFunc(SUCCESS_RES);
			}
			else
			{
				callGameFunc(FAIL_RES);
			}
			Log.d("chjh pay result", "requestCode:"+resultCode + ",resultInfo:"+resultInfo);
		}
	};
	
	
	/**
	 * vip���»ص�
	 */
	//��ȡ������Ϣ�Ƿ񶩹�
	private static String getUmpData()
	{
		String HTTPURL = "http://211.154.162.11/getUmpStatusByImsi.action?";
		String AppKey = "baoyue";

		if (!Utils.getNetworkAvailable())
		{
			return "";
		}
		StringBuffer strb = new StringBuffer();
		strb.append(HTTPURL);
		strb.append("imsi=");
		String imsi = Utils.GetIMSI();
		strb.append(imsi);

		strb.append("&sign=");
		String sign ="";
		try {
			sign = MD5Util.getMD5String(AppKey + imsi);
		} catch (IOException e) {
			e.printStackTrace();
		}
		strb.append(sign);
		//Log.d("", "zhou strb = " + strb);
		HttpUtil hp = new HttpUtil(strb.toString());
		String ret = hp.getSimpleString();
		if (ret == null)
		{
			return "";
		}
		
		String code = "";
		String productid = "";
        JSONObject json;
		try 
		{
			ret = ret.substring(0, ret.lastIndexOf("}") + 1);

			json = new JSONObject(ret);
			code = json.getString("result");
			productid = json.getString("productid");
		}
		catch(JSONException e)
		{
			e.printStackTrace();
			code = "";
			productid = "";
		}
		//Log.d("", "zhou code = " + code);
		
		return code+"|"+productid;

	}

	
	
	//-----------------------------------------------
	//��ȡ���id
	public static void getGift(final int callFunc)
	{
		curActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				giftCallback = callFunc;
				OGThranPay.getShopList();//�̳Ǵ�����
			}
		});
	}
	
	//����Ʒ����ɹ�����
	public static void getGiftFunc()
	{
		String code1 = OGThranPay.checkPCode(1);//������Ϸ
		String code2 = OGThranPay.checkPCode(2);//��Ϸ��
		
		//��ȡvip������Ϣ
		String vipCode = String.valueOf(getUmpData());
		
		String code = code1 + "|" + code2 + "#" + vipCode;
		
		Log.d("chjh result--month:", code);
		
		Cocos2dxLuaJavaBridge.callLuaFunctionWithString(giftCallback, code);
		Cocos2dxLuaJavaBridge.releaseLuaFunction(giftCallback);
	}

	
	//��ȡ�������ȡģʽ
	public static void getGameGiftTaggleParam(final int callFunc)
	{
		curActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				ParamsCallBack = callFunc;
				OGSdkPlatform.getGameParamByKey(context, paramKey1, ogLoadParamsCallBack);
			}
		});
	}
	private static OGLoadParamsCallBack ogLoadParamsCallBack = new OGLoadParamsCallBack(){

		@Override
		public void onLoad(String arg0) {
			// TODO Auto-generated method stub
			 JSONObject json;
				try 
				{
					json = new JSONObject(arg0);
					JSONObject confjson = json.getJSONObject("button_config");
					String btnMode = confjson.getString("VIPBtnMode");
					Log.d("zho btnmode----", "zho btnmode = " + btnMode);
					
					Cocos2dxLuaJavaBridge.callLuaFunctionWithString(ParamsCallBack, btnMode);
					Cocos2dxLuaJavaBridge.releaseLuaFunction(ParamsCallBack);
				}catch(Exception ex)
				{
				}
		}
		
	};
	
	//��Ϸ�����¹ؿ�ͳ��
	public static void umentStartLevel(final int level)
	{
		String lv = String.valueOf(level);
		UMGameAgent.startLevel(lv);
	}
	
	//��Ϸ�¹ؿ��ɹ�
	public static void umentFinishLevel(final int level)
	{
		String lv = String.valueOf(level);
		UMGameAgent.finishLevel(lv);
	}
		
	//��Ϸ�¹ؿ�ʧ��
	public static void umentFailLevel(final int level)
	{
		String lv = String.valueOf(level);
		UMGameAgent.failLevel(lv);
	}

	//�����������
	public static void umentBuy(String item, int number, int price)
	{
		UMGameAgent.buy(item, number, (double)price);
	}
	//ʹ�õ���ͳ��
	public static void umentUse(String item, int number,int price)
	{
		UMGameAgent.use(item, number , (double)price);
	}
	//���⽱��
	public static void umentBonus(String item, int number,int price,int trigger)
	{
		UMGameAgent.bonus(item, number , (double)price,trigger);
	}
	
	//��Ϸ����������������˼�¼�������
	public static void umengPay(final int cost,final int diamonds,final int source)
	{
		UMGameAgent.pay((double)cost, (double)diamonds, source);
	}
	public static void umengPay(final int cost,String item,final int num,final int diamonds,final int source)
	{
		UMGameAgent.pay((double)cost, item, num, (double)diamonds, source);
	}
	
	//�Զ����¼�
	public static void umentOnEvent(String eventId)
	{
		UMGameAgent.onEvent(context, eventId);
	}
	
	//��Ϸ�˳�
	public static void exitGame()
	{
		UMGameAgent.onKillProcess(curActivity);
		curActivity.finish();
		System.exit(0);
	}
	
}
