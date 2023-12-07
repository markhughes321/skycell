@TaskTwo @Authentication @ignore
Feature: Authentication System Test


Background: 
  * url authUrl
  * def credentials = { client_id: 'webapp', grant_type: 'password', username: '#(username)', password: '#(password)' }
  * def expectedResponse = read('classpath:resources/respones/auth.json')

Scenario: Successful Authentication
  Given path 'realms', 'skycell', 'protocol', 'openid-connect', 'token'
  And form fields credentials
  When method post
  Then status 200
  And match response == expectedResponse