/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'nvm-photography-admin',
    podModulePrefix: 'nvm-photography-admin/pods',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    },
    sassOptions: {
      includePaths: ['bower_components/materialize/sass']
    }
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    ENV.APP.LOG_VIEW_LOOKUPS = true;

    ENV.host = 'http://localhost:3000';

    ENV['simple-auth'] = {
      authorizer: 'simple-auth-authorizer:devise',
      crossOriginWhitelist: ['*']
    };

    ENV['simple-auth-devise'] = {
      serverTokenEndpoint: 'http://localhost:3000/api/v1/login',
      tokenAttributeName: 'token'
    };

  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';

    ENV['simple-auth'] = {
      authorizer: 'simple-auth-authorizer:devise',
      store: 'simple-auth-session-store:ephemeral'
    };

  }

  if (environment === 'production') {

  }

  return ENV;
};
