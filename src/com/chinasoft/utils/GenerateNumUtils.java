package com.chinasoft.utils;

import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * 随机生成玻璃编号
 * @author 赵一好
 *
 */

public class GenerateNumUtils {

	public static String createBlNum(){
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String str = "BL" + sdf.format(date);
		return str;
		
	}
	
}
