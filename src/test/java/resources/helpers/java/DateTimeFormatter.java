package resources.helpers.java;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class DateTimeFormatter {

    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");

    public static String getCurrentFormattedDateTime() {
        return sdf.format(new Date());
    }

    public static String getDateTimeOneHourAhead() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.HOUR, 1);
        return sdf.format(calendar.getTime());
    }

    public static List<String> getTenMinuteIntervals() {
        List<String> intervals = new ArrayList<>();
        Calendar calendar = Calendar.getInstance();

        for (int i = 0; i < 6; i++) { // 6 intervals for 10 minutes each within an hour
            calendar.add(Calendar.MINUTE, 10);
            intervals.add(sdf.format(calendar.getTime()));
        }

        return intervals;
    }

    public static long getCurrentTimestampInSeconds() {
        return System.currentTimeMillis() / 1000;
    }
}
