var express = require('express');
var bodyParser = require('body-parser');
var wkhtmltopdf = require('wkhtmltopdf');

var app = express();
var port   = process.env.PORT;

//app.use(bodyParser.raw({
//  type: () => true,
//}));
app.use(bodyParser.json());

app.post('/', (req, res) => {
  res.setHeader('content-type', 'application/pdf');
  wkhtmltopdf(req.body.content, req.body.options).pipe(res);
});

app.listen(getPort(), function () {
  console.log('Example app listening on port ' + getPort());
});

function getPort() {
	if (port === null || port === undefined) {
		return 80;
	} else {
		return port;
	}
}
