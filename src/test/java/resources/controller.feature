@Task4 @Controller
Feature: Controller File


  Background:
    * def CreateLoggerNumber = Java.type('resources.helpers.java.CreateLoggerNumber');
    * def loggerNumber = CreateLoggerNumber.generateLoggerNumber()
    * def DateTimeFormatter = Java.type('resources.helpers.java.DateTimeFormatter')
    * def currentDateTime = DateTimeFormatter.getCurrentFormattedDateTime()
    * def dateTimeOneHourAhead = DateTimeFormatter.getDateTimeOneHourAhead()
    * def tenMinuteIntervals = DateTimeFormatter.getTenMinuteIntervals()
    * def loggerType = 'MR_812P'

  Scenario:
    # Authenticate
    * def authenticate = call read('classpath:resources/steps/task2.feature')
    * def authToken = authenticate.response.access_token

    # Setup Configuration
    * def configuration = call read('classpath:resources/steps/task3.feature')

    # Sensor Data Ingestion
    * def sensorDataIngestion = call read('classpath:resources/steps/task4a.feature')

    # Sensor Data Verification
    * def sensorDataVerification = call read('classpath:resources/steps/task4b.feature')