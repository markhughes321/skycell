function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    googleUrl: 'https://google.com/',
    authUrl: 'https://keycloak.dev.skycell.ch',
    sensorUrl: 'https://sensor-data-ingestion.dev.skycell.ch',
    apiKey: 'NNSXS.RPNRQUVEAQHYIBRJPYB5BMF36VT2E4ZIQWLCO6Y.ZP7FKSYX6J2XO2SRNBPHWQJHIBB5ZWTULHPI27N7C4IMQAKB6QYA'

  }
  if (env == 'dev') {
    // customize
    // e.g. config.userEmail = 'bar';
    // e.g. config.userPassword = 'bar';
  } 
  else if (env == 'eph') {
    // customize
  }
  else if (env == 'stg') {
    // customize
  }

  return config;
}