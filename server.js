var app = require('express')();
const path = require('path');
const port = 3000;

app.get('/',function(req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

app.listen(port, () => {
    console.log(`Listening on port ${port}`);
});