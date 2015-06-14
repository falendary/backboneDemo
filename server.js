var express = require("express"),
	app 	= express();


app.use(express.static(__dirname + "/public/"));

app.get("/", function(req, res)
{
	res.sendFile(__dirname + "/public/index.html");
});

var server = app.listen(80, function () {

  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);

});	