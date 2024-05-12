const express = require('express');
const app =express();

const port = 4000 ;

app.listen(port,()=>{

console.log(`app is running on ${port}`)
});

app.get('/',(req,res)=>{

res.send('<h1>welcom to AWS OMAR </h1>')
});