package resources.helpers.java;

import java.util.Random;

// Utility class to generate fixed-length hexadecimal logger numbers.

public class CreateLoggerNumber {

    private static final int MAX_HEX_LENGTH = 15; // Max length of the logger number

    /**
     * Generates a random hexadecimal number of MAX_HEX_LENGTH.
     * If generated number exceeds MAX_HEX_LENGTH, it's trimmed.
     */
    public static String generateLoggerNumber() {
        Random random = new Random();
        StringBuilder sb = new StringBuilder();

        // Generate random hex digits until reaching MAX_HEX_LENGTH
        while (sb.length() < MAX_HEX_LENGTH) {
            sb.append(Integer.toHexString(random.nextInt(16)));
        }

        // Trim to MAX_HEX_LENGTH if necessary
        if (sb.length() > MAX_HEX_LENGTH) {
            sb.setLength(MAX_HEX_LENGTH);
        }

        return sb.toString().toUpperCase();
    }
}
