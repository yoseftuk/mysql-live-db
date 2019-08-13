const socketIO = require('socket.io');
const mysql = require('mysql');
let io;

const HOST = 'localhost', USER = '__YOUR_USERNAME__', PASSWORD = '__YOUR_PASSWORD__', DATABASE = '__DATABASE_NAME__';
class DB {

    static connect(http) {
        const conn = mysql.createConnection({
            host: HOST,
            user: USER,
            password: PASSWORD,
            database: DATABASE
        });
        conn.connect(err => err && console.log(err));
        initIO(http);
        return conn;
    }
    static withTables(...effectedTables){
        return new Transaction(effectedTables);
    }
}
class Transaction {

    constructor(effectedTables) {
        this.effectedTables = effectedTables;
    }
    query(conn, sql, params, callback) {

        // const cn = DB.connect('localhost', 'root', '', 'yoos_db');
        conn.query(sql, params, (error, results, fields) => {
            callback && callback(error, results, fields);
            for (let table of this.effectedTables) {
                emitTable(table);
            }
        });
        // conn.end();
    }
}

function initIO(http) {
    io = socketIO(http);
    io.on('connection', socket => {
        console.log('new client is connected');
    });
}
function emitTable(tableName) {
    io.emit('db_updated', tableName);
}

module.exports = DB;