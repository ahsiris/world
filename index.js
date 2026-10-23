const express=require('express');
const app=express();
const port=3000;

app.get('/',(req,res)=>
{
 res.send("Integrate git with docker updated!!!");
});

app.listen(port,()=>
{
 console.log("server started");
});

