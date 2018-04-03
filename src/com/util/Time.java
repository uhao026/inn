package com.util;

import java.text.SimpleDateFormat;
import java.util.Date;


public class Time {
	public static String getCurrentTime(){
		Date date =new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return sf.format(date);
	}
//Time.getCurrentTime()
}
