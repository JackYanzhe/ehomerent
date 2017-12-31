package util;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	/**
	 * 字符串转日期
	 * @param strDate  字符串
	 * @return 日期
	 */
	
	public static Date StringToDate(String strDate) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = sdf.parse(strDate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return date;
	}
	/**
	 * 日期转字符串
	 * @param date日期
	 * @return 字符串
	 */
	public static String DateToString(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		date = new Date();
		String str = sdf.format(date);
		
		return str;
	
	}
}
