const express = require('express');
const mysql = require("mysql");
const router = express.Router()
const app = express();


// //creates database connection
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: process.env.DBUSER,
    password: process.env.MYPASSWORD,
    database: process.env.DATABASE
})

////////api/////////


//selects everything from products with matching records in price
//code will process with return and and stop rest of stript from executing after returning response
router.get('/api/products', (req, res) => {
    connection.query("Select * from products  p LEFT JOIN  price pr ON pr.id = p.id", (err, data) =>{
        if (err){
            return res.status(500).send('The server encountered an unexpected condition which prevented it from fulfilling the request.')
        }
        res.send(data)
    })
})




module.exports = router;