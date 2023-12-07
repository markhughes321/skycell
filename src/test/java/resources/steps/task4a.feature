@TaskFourA @SensorDataIngestion @ignore
Feature: Sensor Data Ingestion
 - Insert one data point per each sensor type
 - Insert one data point every 10 minutes for one hour


  Background: 
    * url sensorUrl
    * header apiKey = apiKey
    * def DateTimeFormatter = Java.type('resources.helpers.java.DateTimeFormatter')
    * def timestampInSeconds = DateTimeFormatter.getCurrentTimestampInSeconds()
    * def sensorIngestion = read('classpath:resources/requests/sensorIngestion.json')
    
  Scenario Outline: Sensor Data Ingestion
    Given path 'v1', 'lora', 'uplink'
    And set sensorIngestion.received_at = <recievedAt>
    And request sensorIngestion
    When method post
    Then status 201
    And match response == ''
  
    Examples:
      | recievedAt               | index  |
      | currentDateTime          | 1      |
      | tenMinuteIntervals[0]    | 2      |
      | tenMinuteIntervals[1]    | 2      |
      | tenMinuteIntervals[2]    | 3      |
      | tenMinuteIntervals[3]    | 5      |
      | tenMinuteIntervals[4]    | 6      |
      | tenMinuteIntervals[5]    | 7      |