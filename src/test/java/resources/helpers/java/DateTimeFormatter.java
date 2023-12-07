package resources.helpers.java;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

// Utility class for formatting date-time values.
public class DateTimeFormatter {

    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");

    // Returns the current date-time in format(yyyy-MM-dd'T'HH:mm:ss).
    public static String getCurrentFormattedDateTime() {
        return sdf.format(new Date());
    }

    // Returns the date-time one hour ahead of the current time.
    public static String getDateTimeOneHourAhead() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.HOUR, 1);
        return sdf.format(calendar.getTime());
    }

    // Generates an array list of date-time strings in 10-minute intervals, spanning an hour from the current time.
    public static List<String> getTenMinuteIntervals() {
        List<String> intervals = new ArrayList<>();
        Calendar calendar = Calendar.getInstance();

        for (int i = 0; i < 6; i++) {
            calendar.add(Calendar.MINUTE, 10);
            intervals.add(sdf.format(calendar.getTime()));
        }

        return intervals;
    }

    // Gets the current Unix timestamp in seconds.
    public static long getCurrentTimestampInSeconds() {
        return System.currentTimeMillis() / 1000;
    }
}