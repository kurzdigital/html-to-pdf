var express = require('express');
var bodyParser = require('body-parser');
var wkhtmltopdf = require('wkhtmltopdf');

var app = express();

app.use(bodyParser.json( { limit: '500kb' }));

app.post('/', (req, res) => {
  res.setHeader('content-type', 'application/pdf');
  wkhtmltopdf(req.body.content, req.body.options).pipe(res);
});

app.listen(8080, function () {
  console.log('App listening on port 8080');
});
