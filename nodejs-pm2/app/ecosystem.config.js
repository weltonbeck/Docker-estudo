module.exports = {
  apps : [{
    name: 'docker-nodejs-pm2',
    script: './server.js',
    instances: 1,
    autorestart: false
  }]
}
