@TaskThree @LoggerCreation
Feature: Logger Creation Test


  Background: 
    * url sensorUrl
    * header apiKey = apiKey
    * def CreateLoggerNumber = Java.type('resources.helpers.java.CreateLoggerNumber');
    * def loggerNumber = CreateLoggerNumber.generateLoggerNumber()

  Scenario Outline: Create a <loggerType> logger
    Given path 'v1', 'lora', 'configuration'
    And request 
    """
        { 
          loggerNumber: <loggerNumber>,
          loggerType: <loggerType>,
          baseInterval: <baseInterval>
        }
    """
    When method post
    Then status 201

    Examples:
      | loggerNumber    | loggerType  | baseInterval  |
      | #(loggerNumber) | MR_810T     | 600           |
      | #(loggerNumber) | MR_812P     | 600           |