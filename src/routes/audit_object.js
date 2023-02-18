const express = require("express");
const router = express.Router();

const selectQeury=require('../util/select_query');
const insertQuery=require('../util/registration.js');
const deleteQuery=require('../util/delete');
const updateQuery=require('../util/update');


//audit_object
    router.get('/get',(req,res)=>{
      console.log("Aobject Request")
    selectQeury.getAll(res,'audit_object','audit_object');  
    })
  router.post('/add',(req,res)=>{ 
    insertQuery.add(req.body,'audit_object',res); 
    })
  router.put('/update',(req,res)=>{
    updateQuery.update(req.body.body,'audit_object',req.body.criateria,req.body.connector,res); 
    })
  router.delete('/delete',(req,res)=>{  
    deleteQuery.deleteOperation(req.body,'audit_object',res); 
    })
  

module.exports = router;