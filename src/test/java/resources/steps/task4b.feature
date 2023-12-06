@TaskFourB @SensorDataVerification @ignore
Feature: Sensor Data Verification
 - Verify the correct creation of the data. Be sure to be able to repeat the test multiple times without having
    data conflicts.


  Background: 
    * url verificationUrl
    * header apiKey = apiKey
    * def expectedResponse = read('classpath:resources/respones/sensorVerification.json')
    * def dataTypes = "#regex (TEMPERATURE|BATTERY_VOLTAGE)"
    * def sensorCodes = "#regex (CONNECTOR_1|BATTERY_VOLTAGE|INTEGRATED)"
    * def positions = "#regex (UNSPECIFIED|INTERNAL)"
    * def data = "#number"
    * def dataEnteries =  {"t": "#regex \\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}", "d": "#[] data" }

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
            loggerType: '#(loggerType)'
          }
        ],
        dataTypes: [<dataTypes>],
        sensorCodes: [<sensorCodes>]
      }
    """
    When method post
    Then status 200
    And print response
    And print response.dataTypes[0]
    And match response == expectedResponse
    And match response.data == '#[6]'
    And match response.dataTypes[0] == '<dataTypes>'
    And match response.sensorCodes[0] == '<sensorCodes>'
    And match response.data[0].d[*] == [<data>]


    Examples:
      | dataTypes       | sensorCodes     | data |
      | TEMPERATURE     | INTEGRATED      | 23.1 |
      | BATTERY_VOLTAGE | BATTERY_VOLTAGE | 1.3  |
      | TEMPERATURE     | CONNECTOR_1     | 22.0 |