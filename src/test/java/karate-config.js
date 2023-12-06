function fn() {
  var env = karate.env || 'dev'; // Set to 'dev' by default if karate.env is not specified
  karate.log('karate.env system property was:', env);

  // Reading environment variables
  var config = {
    authUrl: java.lang.System.getenv('authUrl'),
    sensorUrl: java.lang.System.getenv('sensorUrl'),
    verificationUrl: java.lang.System.getenv('verificationUrl'),
    apiKey: java.lang.System.getenv('apiKey')
  };

  karate.configure('connectTimeout', 80000);
  karate.configure('readTimeout', 80000);

  return config;
}