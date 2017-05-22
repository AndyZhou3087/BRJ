package com.kxx.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.util.Log;

import com.og.gameconfig.OGLoadParamsCallBack;
import com.og.unite.main.OGSdkPlatform;
import com.og.unite.shop.OGSdkIShopCenter;
import com.og.unite.shop.bean.*;

public class OGThranPay {
	public static Activity context;
	public static ArrayList<OGSDKMall> goodsList = null;
	public static final String paramKey = "gameparam";
	public static final String paramKey1 = "gameinit";
	public static int giftbtnmode = 0;
	public static Map<String,Integer> keyMap = null;
	public static String payType = null;
	public static String[] bypcode = {"rzjxkp.by.8", "rzjxkp.by.10", "rzjxkp.by.15", "rzjxkp.by.20", "rzjxkp.by.30"};
	public static String[] pcode0 = {"rzjxkp.lb.2", "rzjxkp.lb.6", "rzjxkp.lb.8", "rzjxkp.lb.10", "rzjxkp.lb.15", "rzjxkp.lb.20", "rzjxkp.lb.30"};
	public static String[] pcode1 = {"rzjxkp.lb.2.1", "rzjxkp.lb.6.1", "rzjxkp.lb.8.1", "rzjxkp.lb.10.1", "rzjxkp.lb.15.1","rzjxkp.lb.20.1","rzjxkp.lb.30.1"};

	public static void init(Activity act)
	{
		context = act;
//		OGSdkPlatform.setConnectLog(true);
		OGSdkPlatform.initSDK(act);
		
		String otAppId = Utils.getMetaData(context, "rzjxkp");
		OGSdkPlatform.initGameParamsByKey(act, otAppId, paramKey + "|" + paramKey1);
	}
	
	public static void destroy()
	{
		OGSdkPlatform.destroy();
	}
	
    public static void getShopList()
    {
    	String uuid = Utils.UUID();
    	Log.d("--------正在获取goodsList-----------------------", "uuid = " + uuid);
    	
		OGSdkPlatform.getShopList((Activity)context, uuid, uuid,  new OGSdkIShopCenter(){
			
			public void onGetShopListResult(OGSDKShopData resultData) {
				ArrayList<?> malls = resultData.getMallList();
				if (malls != null && malls.size() > 0) {
					
					if(goodsList == null)
						goodsList = new ArrayList<OGSDKMall>();
					else
						goodsList.clear();
					for (Object mall : malls) {
						goodsList.add((OGSDKMall)mall);
					}
					Collections.sort(goodsList, new SortBySortNum());
//					Util.writeFile("goodsList-----:"+goodsList.toString());
					Log.d("--------goodsList获取成功!!!", "goodsList长度 = " + goodsList.size());
					Util.getGiftFunc();
				}
			}
		});
    }
   
    public static String checkGoodsType(final String _goodsCode)
    {
    	if (goodsList != null)
    	{
    		OGSDKMall mall;
			for (int i=0;i < goodsList.size(); i++)
			{
				mall = goodsList.get(i);

				if (mall.getProductId().equalsIgnoreCase(_goodsCode))
				{
					return mall.getSdkPackageKey();
				}
			}
    	}
    	return "";
    }
    
    public static String checkPCode(int where)
    {
    	if (goodsList != null)
    	{
    		OGSDKMall mall;

			for (int i=0; i < goodsList.size(); i++)
			{
				mall = goodsList.get(i);
	    		if (where == 1)//进入游戏
	    		{
	    			//包月礼包优先
	    			for (int v = 0; v < bypcode.length; v++)
	    			{
	    				if (mall.getProductId().equalsIgnoreCase(bypcode[v]))
						{
							return bypcode[v];
						}
	    			}
	    			//普通礼包其次
					for (int j = 0; j < pcode0.length; j++)	
					{
						if (mall.getProductId().equalsIgnoreCase(pcode0[j]))
						{
							return pcode0[j];
						}
					}
	    		}
	    		else if (where == 2)//游戏中或返回界面弹出
	    		{
					for (int j = 0; j < pcode1.length; j++)	
					{
						if (mall.getProductId().equalsIgnoreCase(pcode1[j]))
						{
							return pcode1[j];
						}
					}
	    		}
			}
    	}
    	return "0";
    }
   
    public static String getGoodsList(final String pcode)
    {
    	if (goodsList != null)
    	{
    		OGSDKMall mall;

			for (int i=0; i < goodsList.size(); i++)
			{
				mall = goodsList.get(i);
				for (int j = 0; j < pcode0.length; j++)	
				{
					if (mall.getProductId().equalsIgnoreCase(pcode0[j]))
					{
						return pcode0[j];
					}
				}
			}
    	}
    	return "";

    }
    
    
	public static void getGameConfirmParam()
	{
		OGSdkPlatform.getGameParamByKey(context, paramKey,new  OGLoadParamsCallBack(){
			public void  onLoad(String  param){
		    JSONObject json;
			try 
			{
				json = new JSONObject(param);
				JSONArray retArray = json.getJSONArray("sdkpackage");
				for (int i=0;i<retArray.length();i++)
				{
					JSONObject arrinfo = retArray.getJSONObject(i);
					String type = arrinfo.getString("SdkPackageId");
					
					keyMap = new HashMap<String,Integer>();
					int value = arrinfo.getBoolean("IsConfirm")?1:0;
					keyMap.put(type, value);
				}
			}catch(Exception ex)
			{
				if (keyMap != null)
					keyMap.clear();
				keyMap = null;
			}
			//Log.d("", "zhou isComfirm = " + isComfirm);
	} 
	});

	}
	
	public static int getIsComfirm()
	{
		if (keyMap != null)
		{
		   for (Map.Entry<String,Integer> entry : keyMap.entrySet()) 
		   {
			    String key = entry.getKey();

			    int value = entry.getValue().intValue();
			    if (key.equalsIgnoreCase(payType))
			    	return value;
			}

		}
		return 0;
	}
	

}

class SortBySortNum implements Comparator<OGSDKMall> 
{
	 public int compare(OGSDKMall mall1, OGSDKMall mall2) 
	 {
	  if (mall1.getOrderNum() > mall2.getOrderNum())
		  return -1;
	  else if (mall1.getOrderNum() == mall2.getOrderNum())
		  return 0;
	  return 1;
	 }
}
