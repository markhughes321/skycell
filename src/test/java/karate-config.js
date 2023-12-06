function fn() {
  var env = karate.env || 'dev'; // Set to 'dev' by default if karate.env is not specified
  karate.log('karate.env system property was:', env);

  // Reading environment variables
  var config = {
    authUrl: java.lang.System.getenv('AUTHURL'),
    sensorUrl: java.lang.System.getenv('SENSORURL'),
    verificationUrl: java.lang.System.getenv('VERIFICATIONURL'),
    apiKey: java.lang.System.getenv('APIKEY')
  };

  karate.configure('connectTimeout', 80000);
  karate.configure('readTimeout', 80000);

  return config;
}