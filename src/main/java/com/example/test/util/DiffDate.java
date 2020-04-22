package com.example.test.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DiffDate{

  public static long diffOfDate(String begin, String end) throws Exception {
      final String DATE_PATTERN = "yyyy-MM-dd";
      final int MILLI_SECONDS_PER_DAY = 24 * 60 * 60 * 1000;
      SimpleDateFormat sdf = new SimpleDateFormat(DATE_PATTERN);
      Date startDate = sdf.parse(begin);
      Date endDate = sdf.parse(end);
      long difference = (endDate.getTime() - startDate.getTime()) / MILLI_SECONDS_PER_DAY;
      return difference;
  }
}
