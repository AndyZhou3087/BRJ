package com.kxx.market;

import java.util.HashMap;
import java.util.Map;

import com.kxx.config.GoodConfig;

public class GoodsTable {

	static Map<String, Good> goodsTable = new HashMap<String, Good>();
	
	static
	{
		
		Good good001 = new Good();good001.name="20鏄熸槦";	    good001.value=2;	good001.num=20;   good001.payType = 0;good001.sDesc = "浣犵‘瀹氳鑺辫垂2鍏冭喘涔�0涓槦鏄熷悧锛�";good001.appid="001";    good001.appchargeid="E7C9ADCD32102E43E0530100007FCBCF";
		Good good002 = new Good();good002.name="45鏄熸槦";	    good002.value=4;	good002.num=45;   good002.payType = 0;good002.sDesc = "浣犵‘瀹氳鑺辫垂4鍏冭喘涔�5涓槦鏄熷悧锛�";	good002.appid="002";    good002.appchargeid="E7C9ADCD32112E43E0530100007FCBCF";
		Good good003 = new Good();good003.name="70鏄熸槦";	    good003.value=6;	good003.num=70;   good003.payType = 0;good003.sDesc = "浣犵‘瀹氳鑺辫垂6鍏冭喘涔�0涓槦鏄熷悧锛�";	good003.appid="003";    good003.appchargeid="E7C9ADCD32122E43E0530100007FCBCF";
		Good good004 = new Good();good004.name="120鏄熸槦";	    good004.value=10;	good004.num=120;  good004.payType = 0;good004.sDesc = "浣犵‘瀹氳鑺辫垂10鍏冭喘涔�20涓槦鏄熷悧锛�";good004.appid="004";   good004.appchargeid="E7C9ADCD32132E43E0530100007FCBCF";
		Good good005 = new Good();good005.name="150鏄熸槦";	    good005.value=12;	good005.num=150;  good005.payType = 0;good005.sDesc = "浣犵‘瀹氳鑺辫垂18鍏冭喘涔�30涓槦鏄熷悧锛�";good005.appid = "005"; good005.appchargeid="E7C9ADCD32142E43E0530100007FCBCF";
		Good good006 = new Good();good006.name="260鏄熸槦";  	good006.value=20;	good006.num=260;  good006.payType = 0;good006.sDesc = "浣犵‘瀹氳鑺辫垂20鍏冭喘涔�60涓槦鏄熷悧锛�";good006.appid = "006"; good006.appchargeid="E7C9ADCD32152E43E0530100007FCBCF";	
		Good good007 = new Good();good007.name="閲嶈瘯闂叧";	    good007.value=6;	good007.num=1;    good007.payType = 0;good007.sDesc = "浣犵‘瀹氳鑺辫垂5鍏冭喘涔伴噸璇曢棷鍏抽亾鍏峰悧锛�";good007.appid = "007"; good007.appchargeid="E7C9ADCD32162E43E0530100007FCBCF";
		Good good008 = new Good();good008.name="闄愭椂鎶㈣喘绀煎寘";	good008.value=6;	good008.num=1;    good008.payType = 0;good008.sDesc = "浣犵‘瀹氳鑺辫垂5鍏冭喘涔伴檺鏃舵姠璐ぜ鍖呭悧锛�";good008.appid = "008"; good008.appchargeid="E9FD02A8EE67155BE0530100007FF1F8";
		
		Good good009 = new Good();good009.name="骞歌繍澶хぜ鍖�";	good009.value=6;	good009.num=1;    good009.payType = 0;good009.sDesc = "浣犵‘瀹氳鑺辫垂6鍏冭喘涔板垢杩愬ぇ绀煎寘鍚楋紵";	good009.appid = "009"; good009.appchargeid="E7C9ADCD321B2E43E0530100007FCBCF";
		
		Good good010 = new Good();good010.name="闄愰噺澶хぜ鍖�";	good010.value=6;	good010.num=1;    good010.payType = 0;good010.sDesc = "浣犵‘瀹氳鑺辫垂4鍏冭喘涔伴檺閲忓ぇ绀煎寘鍚楋紵";	good010.appid = "010"; good010.appchargeid="E7C9ADCD321A2E43E0530100007FCBCF";
		Good good011 = new Good();good011.name="鏂版墜绀煎寘";	    good011.value=6;	good011.num=1;    good011.payType = 0;good011.sDesc = "浣犵‘瀹氳鑺辫垂5鍏冭喘涔版柊鎵嬬ぜ鍖呭悧锛�";	good011.appid = "011"; good011.appchargeid="E9FD02A8EE6A155BE0530100007FF1F8";
		Good good012 = new Good();good012.name="vip鍖呮湀";	    good012.value=10;	good012.num=1;    good012.payType = 1;good012.sDesc = "浣犵‘瀹氳鑺辫垂10鍏冭喘涔皏ip鍖呮湀鍚楋紵";	good012.appid="012";   good012.appchargeid="90004913";
		Good good013 = new Good();good013.name="閲嶈瘯闂叧";	    good013.value=6;	good013.num=1;    good013.payType = 0;good013.sDesc = "浣犵‘瀹氳鑺辫垂5鍏冭喘涔伴噸璇曢棷鍏抽亾鍏峰悧锛�";good013.appid = "007"; good013.appchargeid="E7C9ADCD32162E43E0530100007FCBCF";
		Good good014 = new Good();good014.name="闄愭椂鎶㈣喘绀煎寘";	good014.value=6;	good014.num=1;    good014.payType = 0;good014.sDesc = "浣犵‘瀹氳鑺辫垂5鍏冭喘涔伴檺鏃舵姠璐ぜ鍖呭悧锛�";good014.appid = "008"; good014.appchargeid="E9FD02A8EE67155BE0530100007FF1F8";
		
		Good good015 = new Good();good015.name="骞歌繍澶хぜ鍖�";	good015.value=6;	good015.num=1;    good015.payType = 0;good015.sDesc = "浣犵‘瀹氳鑺辫垂6鍏冭喘涔板垢杩愬ぇ绀煎寘鍚楋紵";	good015.appid = "009"; good015.appchargeid="E7C9ADCD321B2E43E0530100007FCBCF";
		Good good016 = new Good();good016.name="闄愰噺澶хぜ鍖�";	good016.value=6;	good016.num=1;    good016.payType = 0;good016.sDesc = "浣犵‘瀹氳鑺辫垂4鍏冭喘涔伴檺閲忓ぇ绀煎寘鍚楋紵";	good016.appid = "010"; good016.appchargeid="E7C9ADCD321A2E43E0530100007FCBCF";
		Good good017 = new Good();good017.name="鏂版墜绀煎寘";	    good017.value=6;	good017.num=1;    good017.payType = 0;good017.sDesc = "浣犵‘瀹氳鑺辫垂5鍏冭喘涔版柊鎵嬬ぜ鍖呭悧锛�";	good017.appid = "011"; good017.appchargeid="E9FD02A8EE6A155BE0530100007FF1F8";
		Good good018 = new Good();good018.name="vip鍖呮湀";	    good018.value=10;	good018.num=1;    good018.payType = 1;good018.sDesc = "浣犵‘瀹氳鑺辫垂10鍏冭喘涔皏ip鍖呮湀鍚楋紵";	good018.appid="012";   good018.appchargeid="90004913";
		
		goodsTable.put(GoodConfig.SHOPITEM_1, good001);
		goodsTable.put(GoodConfig.SHOPITEM_2, good002);
		goodsTable.put(GoodConfig.SHOPITEM_3, good003);
		goodsTable.put(GoodConfig.SHOPITEM_4, good004);
		goodsTable.put(GoodConfig.SHOPITEM_5, good005);
		goodsTable.put(GoodConfig.SHOPITEM_6, good006);
		goodsTable.put(GoodConfig.SHOPITEM_7, good007);
		goodsTable.put(GoodConfig.SHOPITEM_8, good008);
		
		goodsTable.put(GoodConfig.REVIVE, good009);
		goodsTable.put(GoodConfig.RoleLevel_1, good010);
		goodsTable.put(GoodConfig.RoleLevel_2, good011);
		goodsTable.put(GoodConfig.RoleLevel_3, good012);
		goodsTable.put(GoodConfig.RoleLevel_4, good013);
		goodsTable.put(GoodConfig.RoleLevel_5, good014);
		goodsTable.put(GoodConfig.RoleGift_1, good015);
		goodsTable.put(GoodConfig.RoleGift_2, good016);
		goodsTable.put(GoodConfig.RoleGift_3, good017);
		goodsTable.put(GoodConfig.RoleGift_4, good018);
		
	}
	
	public static Good get(String index){
		return goodsTable.get(index);
	}
}
