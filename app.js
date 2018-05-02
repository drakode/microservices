var express = require('express');


var app = express();


app.post('/create', function(req, res) {

    res.setHeader('Content-Type', 'text/plain');

    res.redirect('http://localhost:80');

});

app.put('/create', function(req, res) {

    res.setHeader('Content-Type', 'text/plain');

    res.redirect('http://localhost:80');

});

app.listen(8080);