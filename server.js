const express = require('express')
const app = express();
const path = require('path');

app.set("/", "html");
app.use(express.static(path.join(__dirname, "/")));
app.use(exppress.json());
app.use(sexpress.urlencoded({extended: false}));

app.get("/",(req,  res)=> {
res.render('index');
});

app.listen(5500,() =>{
    console.log("Listening on http://localhost:5500");
});