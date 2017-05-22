package org.cocos2dx.lua;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.Date;

import android.app.Application;
import android.os.Environment;
import android.util.Log;

public class Appication extends Application {
	
	private static UnCaughtHandler unCaughtHandler=new UnCaughtHandler();
	
	@Override
	public void onCreate() {
		super.onCreate();

		//Thread.setDefaultUncaughtExceptionHandler(unCaughtHandler);
//		try {
//			//打印全部log日志(全部输出)
//			Runtime.getRuntime().exec("logcat -f "+ "sdcard/tem.txt");
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}
	
	
	/*******
	 * 全局未捕获的异常处理
	 * @author Administrator
	 *
	 */
	public static class UnCaughtHandler implements UncaughtExceptionHandler
	{
		@Override
		public void uncaughtException(Thread thread, Throwable ex) {
			// TODO Auto-generated method stub
			try
			{
				String path = Environment.getExternalStorageDirectory().getAbsolutePath();
				File f=new File(path + "/tem.txt");
				
				Log.d("----------chjh path result", "path:"+path);
				if(!f.exists())
				{
					f.createNewFile();
				}
				FileWriter fileWriter=new FileWriter(f, true);
				
				PrintWriter pw=new PrintWriter(fileWriter);
				pw.append("\n\n\n\n\n\n");
				pw.append("***********************************************");
				pw.append(new Date().toLocaleString());
				ex.printStackTrace(pw);
				pw.close();
				
				ex.printStackTrace();
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
	}
}
