@TaskFourA @SensorDataIngestion @ignore
Feature: Sensor Data Ingestion
 - Insert one data point per each sensor type
 - Insert one data point every 10 minutes for one hour


  Background: 
    * url sensorUrl
    * header apiKey = apiKey
    * def sensorIngestion = read('classpath:resources/requests/sensorIngestion.json')
    
  Scenario Outline: Sensor Data Ingestion
    Given path 'v1', 'lora', 'uplink'
    And set sensorIngestion.received_at = <recievedAt>
    And request sensorIngestion
    When method post
    Then status 201
  
    Examples:
      | recievedAt               |
      | currentDateTime          |
      | tenMinuteIntervals[0]    |
      | tenMinuteIntervals[1]    |
      | tenMinuteIntervals[2]    |
      | tenMinuteIntervals[3]    |
      | tenMinuteIntervals[4]    |
      | tenMinuteIntervals[5]    |