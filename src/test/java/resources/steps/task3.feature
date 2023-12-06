@TaskThree @LoggerCreation @ignore
Feature: Creates the Logger Configuration


  Background: 
    * url sensorUrl
    * header apiKey = apiKey

  Scenario Outline: Create the <loggerType> logger configuration 
    Given path 'v1', 'lora', 'configuration'
    And request 
    """
        { 
          loggerNumber: '#(loggerNumber)',
          loggerType: <loggerType>,
          baseInterval: <baseInterval>
        }
    """
    When method post
    Then status 201

    Examples:
      | loggerType  | baseInterval  |
      | MR_812P     | 600           |
      | MR_812P     | 600           |
      | MR_812P     | 600           |