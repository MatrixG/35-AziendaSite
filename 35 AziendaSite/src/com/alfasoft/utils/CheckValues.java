package com.alfasoft.utils;

public class CheckValues {
	
	public static boolean checkString(String temp) {
		
		if (temp != null && !temp.isEmpty())
			return true;
		
		return false;
	}

}
