package com.example.test.util;

public class Random {
	
	public static String random(String passwd) {	
		for(int i=0; i<6; i++) { 
			int rndVal = (int)(Math.random() * 62); 
				if(rndVal < 10) { 
					passwd += rndVal; 
				} else if(rndVal > 35) { 
					passwd += (char)(rndVal + 61); 
				} else { 
					passwd += (char)(rndVal + 55); 
				} 
		}
		return passwd;
	}	

}