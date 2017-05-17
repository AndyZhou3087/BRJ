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
	private static int vipCallBack = 0;
	
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
				String uuid = UUID();
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
	public static void getSpecialProductInfo(final int callFunc)
	{
		curActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				vipCallBack = callFunc;
				String code = String.valueOf(getUmpData());
				Cocos2dxLuaJavaBridge.callLuaFunctionWithString(vipCallBack, code);
				Cocos2dxLuaJavaBridge.releaseLuaFunction(vipCallBack);
			}
		});	
	}
	//��ȡ������Ϣ�Ƿ񶩹�
	private static int getUmpData()
	{
		String HTTPURL = "http://211.154.162.11/getUmpStatusByImsi.action?";
		String AppKey = "baoyue";

		if (!getNetworkAvailable())
		{
			return -1;
		}
		StringBuffer strb = new StringBuffer();
		strb.append(HTTPURL);
		strb.append("imsi=");
		String imsi = GetIMSI();
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
			return -1;
		}
		
		int code = -1;
        JSONObject json;
		try 
		{
			ret = ret.substring(0, ret.lastIndexOf("}") + 1);

			json = new JSONObject(ret);
			code = Integer.valueOf(json.getString("result"));
		}
		catch(JSONException e)
		{
			e.printStackTrace();
			code = -1;
		}
		//Log.d("", "zhou code = " + code);

		return code;

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
				String code1 = OGThranPay.checkPCode(1);//������Ϸ
				String code2 = OGThranPay.checkPCode(2);//��Ϸ��
				String code = code1 + "," + code2;
				callGiftFunc(code);
			}
		});
	}
	
	//������Ϸ�������
	private static void callGiftFunc(final String result){
		curActivity.runOnGLThread(new Runnable() {
		@Override
		public void run() {
			Cocos2dxLuaJavaBridge.callLuaFunctionWithString(giftCallback, result);
			Cocos2dxLuaJavaBridge.releaseLuaFunction(giftCallback);
			}
		});
	}
	//---------------------------------------------
	
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
					Log.d("", "zho btnmode = " + btnMode);
					
					Cocos2dxLuaJavaBridge.callLuaFunctionWithString(ParamsCallBack, btnMode);
					Cocos2dxLuaJavaBridge.releaseLuaFunction(ParamsCallBack);
				}catch(Exception ex)
				{
				}
		}
		
	};
	
	
	
	//��Ϸ����������������˼�¼�������
	public static void umengPay(final int cost,final int diamonds,final int source)
	{
//		UMGameAgent.pay((double)(cost/100), (double)diamonds, source);
	}
	public static void umengPay(final int cost,String item,final int num,final int diamonds,final int source)
	{
//		UMGameAgent.pay((double)(cost/100), item, num, (double)diamonds, source);
	}
	
	//��Ϸ�˳�
	public static void exitGame()
	{
//		UMGameAgent.onKillProcess(curActivity);
		curActivity.finish();
		System.exit(0);
	}
	
	
	
	public static boolean getNetworkAvailable() 
    { 
    	boolean success = false;
    	//����������ӷ���   
    	ConnectivityManager connManager = (ConnectivityManager) AppActivity.getTheApp().getSystemService(Context.CONNECTIVITY_SERVICE);   
    	State state = connManager.getNetworkInfo(   
    	ConnectivityManager.TYPE_WIFI).getState(); // ��ȡ��������״̬   
    	if (State.CONNECTED == state) 
    	{ // �ж��Ƿ�����ʹ��WIFI����   
    		success = true;
    		return success;
    	}
    	try{
	    	state = connManager.getNetworkInfo(   
	    	ConnectivityManager.TYPE_MOBILE).getState(); // ��ȡ��������״̬   
	    	if (State.CONNECTED == state) 
	    	{ // �ж��Ƿ�����ʹ��GPRS����   
	    		success = true;   
	    	}
    	}catch (Exception e)
    	{
    		e.printStackTrace();
    	}
    	return success;
    	  
    }
	
	public static String GetIMSI()
	{
    	TelephonyManager s_tm	= (TelephonyManager)AppActivity.getTheApp().getSystemService(Context.TELEPHONY_SERVICE);
		String imsi = "";
		try {
			imsi = s_tm.getSubscriberId(); 
		} catch (Exception e)
		{
			e.printStackTrace();
		}	
		
		if(imsi == null) imsi = "";
		return imsi;
	}
	
	public static String GetIMEI()
    {
        TelephonyManager tm = (TelephonyManager) AppActivity.getTheApp().getSystemService(Activity.TELEPHONY_SERVICE);
        return tm.getDeviceId();
    }
    
    public static String GetLocalMacAddress() {
		WifiManager wifi = (WifiManager) AppActivity.getTheApp().getSystemService(Context.WIFI_SERVICE);
		WifiInfo info = wifi.getConnectionInfo();
		return info.getMacAddress();
	}
    
    public static String UUID()
    {
		String uuid = GetIMEI();
		
		if (uuid == null)
			uuid = "";

		String macAddr = GetLocalMacAddress();
		if (macAddr == null)
			macAddr = "";
		uuid += macAddr.replaceAll(":", "");
		return "loc" + uuid;
    }
    
    public static String getMetaData(Context contex, String meta) {
		String data = "";
		try {
			data = contex.getPackageManager().getApplicationInfo(contex.getPackageName(), PackageManager.GET_META_DATA).metaData.getString(meta);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
	
}
