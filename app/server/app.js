'use strict';

// NODE_ENV는 서버 시작시 arguments를 받는다.
process.env.NODE_ENV = process.env.NODE_ENV || 'development';

const express = require('express');
const config = require('./config/environment');

const app = express();
const server = require('http').createServer(app);
require('./config/express')(app);
require('./routes')(app);

server.listen(config.port, config.ip, function () {
  console.log('Express server listening on %d, in %s mode', config.port, app.get('env'));
});

exports = module.exports = app;
