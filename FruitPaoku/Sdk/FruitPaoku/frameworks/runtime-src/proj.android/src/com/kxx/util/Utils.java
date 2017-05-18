package com.kxx.util;

import java.io.File;
import java.io.UnsupportedEncodingException;

import org.cocos2dx.lua.AppActivity;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.telephony.TelephonyManager;


public class Utils{
	
    public static String getExternalStorage()
    {
    	boolean isExit = android.os.Environment.getExternalStorageState().equals(android.os.Environment.MEDIA_MOUNTED);
    	if (isExit)
    		return Environment.getExternalStorageDirectory().toString();
    	else
    		return null;
    		
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
    
    /**
     * 鑾峰彇鐗堟湰鍙�
     * @return 褰撳墠搴旂敤鐨勭増鏈彿
     */
    public static String getVersion() {
        try {
            PackageManager manager = AppActivity.getTheApp().getPackageManager();
            PackageInfo info = manager.getPackageInfo(AppActivity.getTheApp().getPackageName(), 0);
            String vname = info.versionName;
            return vname;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
    
    public static int getVersionCode() {
        try {
            PackageManager manager = AppActivity.getTheApp().getPackageManager();
            PackageInfo info = manager.getPackageInfo(AppActivity.getTheApp().getPackageName(), 0);
            int vcode = info.versionCode;
            return vcode;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
    
    public static String getPkgName()
    {
        return AppActivity.getTheApp().getPackageName();
    }
    
	public static String getChannelID() {
		String channel = "";
		try {
			channel = AppActivity.getTheApp().getPackageManager().getApplicationInfo(getPkgName(), PackageManager.GET_META_DATA).metaData.getString("OT_APPCHANNEL");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return channel;
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
	
    public static boolean getNetworkAvailable() 
    { 
    	boolean success = false;
    	//鑾峰緱缃戠粶杩炴帴鏈嶅姟   
    	ConnectivityManager connManager = (ConnectivityManager) AppActivity.getTheApp().getSystemService(Context.CONNECTIVITY_SERVICE);   
    	State state = connManager.getNetworkInfo(   
    	ConnectivityManager.TYPE_WIFI).getState(); // 鑾峰彇缃戠粶杩炴帴鐘舵�   
    	if (State.CONNECTED == state) 
    	{ // 鍒ゆ柇鏄惁姝ｅ湪浣跨敤WIFI缃戠粶   
    		success = true;
    		return success;
    	}
    	try{
	    	state = connManager.getNetworkInfo(   
	    	ConnectivityManager.TYPE_MOBILE).getState(); // 鑾峰彇缃戠粶杩炴帴鐘舵�   
	    	if (State.CONNECTED == state) 
	    	{ // 鍒ゆ柇鏄惁姝ｅ湪浣跨敤GPRS缃戠粶   
	    		success = true;   
	    	}
    	}catch (Exception e)
    	{
    		e.printStackTrace();
    	}
    	return success;
    	  
    }
    
    public static String gbkToUTF8(String str)
    {
    	String retstr = "";
		try {
			retstr = new String(str.getBytes("UTF-8"),"ISO-8859-1");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

    	return retstr;
    }
}
