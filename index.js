const express = require('express');
const app = express();
const http = require('http').createServer(app);
// const io = require('socket.io');
const DB = require('./Db/db');
const Post = require('./models/post');

let conn = DB.connect(http);

app.use(express.json());       // to support JSON-encoded bodies
app.use(express.urlencoded()); // to support URL-encoded bodies

app.get('/', (req, res) => {
    res.sendFile(`${__dirname}/index.html`);
});
app.get('/posts', (req, res) => {

    Post.get(conn, res);

});
app.post('/post', (req, res) => {
    Post.add(conn, req, res);
    // res.send('OK');
});
http.listen(3000, () => {
    console.log('listening on port :3000');
});

