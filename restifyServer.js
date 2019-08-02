var restify = require('restify');
var server = restify.createServer();

function respond(req, res, next) {
  res.send('Hello World!');
  next();
}

server.get('/', respond);
server.head('/', respond);

server.listen(3000, function() {
  console.log('You are listening at %s', server.url);
});
