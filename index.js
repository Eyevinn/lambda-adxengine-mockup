const AdxEngineMockup = require('eyevinn-adxchange-engine').exchange('MockupExchange');

exports.handler = (event, context, callback) => {
  const mockup = new AdxEngineMockup();
  mockup.generateMockupResponse().then(payload => {
    callback(null, {body: payload});    
  }).catch(err => {
    callback(err);
  });
};