package resources.helpers.java;

import java.util.Random;

public class CreateLoggerNumber {

    private static final int MAX_HEX_LENGTH = 16;

    public static String generateLoggerNumber() {
        Random random = new Random();
        StringBuilder sb = new StringBuilder();

        // Loop until the StringBuilder length is less than MAX_HEX_LENGTH
        while (sb.length() < MAX_HEX_LENGTH) {
            // Append a random hexadecimal digit (0-15) to the StringBuilder
            sb.append(Integer.toHexString(random.nextInt(16)));
        }

        // If the StringBuilder length exceeds MAX_HEX_LENGTH, trim it
        if (sb.length() > MAX_HEX_LENGTH) {
            sb.setLength(MAX_HEX_LENGTH);
        }

        return sb.toString().toUpperCase();
    }

}
