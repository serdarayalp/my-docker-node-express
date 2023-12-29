const express = require('express');
const app = express();

app.get('/', (req,res)=>{
     res.send("Willkommen bei meiner App!"); 
 });

app.listen(3000, function () {
    console.log("Anwendung lauscht auf Port 3000");
});