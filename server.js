var express = require("express"),
	app 	= express();


app.use(express.static(__dirname + "/public/"));

app.get("/", function(req, res)
{
	res.sendFile(__dirname + "/public/index.html");
});

var server = app.listen(process.env.PORT || 3000, function () {

  // var host = server.address().address;
  // var port = server.address().port;

  console.log("Express server listening on port %d in %s mode", this.address().port, app.settings.env);

});	