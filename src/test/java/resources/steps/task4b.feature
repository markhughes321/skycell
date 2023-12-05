@TaskFourB @SensorDataVerification @ignore
Feature: Sensor Data Verification
 - Verify the correct creation of the data. Be sure to be able to repeat the test multiple times without having
    data conflicts.


  Background: 
    * url verificationUrl
    * header apiKey = apiKey

  Scenario Outline: Sensor Data Verification
    Given path 'v1', 'logger', 'custom'
    And request 
    """
      {
        useStandardizedTimestamps: false,
        from: '#(currentDateTime)',
        to: '#(dateTimeOneHourAhead)',
        loggers: [
          {
            loggerNumber: '#(loggerNumber)',
            loggerType: "MR_810T"
          }
        ],
        dataTypes: [<dataTypes>],
        sensorCodes: [<sensorCodes>]
      }
    """
    When method post
    Then status 200
    And print response

    Examples:
      | dataTypes       | sensorCodes     |
      | TEMPERATURE     | INTEGRATED      |
      | BATTERY_VOLTAGE | BATTERY_VOLTAGE |
