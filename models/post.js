const DB = require('../Db/db');

class Post {
    static get(conn, res) {
        DB.withTables().query(conn, 'SELECT * FROM posts ORDER BY id', [], (err, results, fields) => {
            if (err)  res.send([]);
            else res.send(results);
        });
    }
    static add(conn, req, res) {
        DB.withTables('posts').query(conn, 'INSERT INTO posts SET ?', {title: req.body.title, description: req.body.desc}, (err, results, fields) => {
            res.send(JSON.stringify({err}));
        });
    }
}

module.exports = Post;