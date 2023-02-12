const express = require("express");
const router = express.Router();

const selectQeury=require('../util/select_query');
const insertQuery=require('../util/registration.js');
const deleteQuery=require('../util/delete');
const updateQuery=require('../util/update');


//audit_objectives

  router.get('/get',(req,res)=>{
    selectQeury.getAll(res,'audit_objectives','audit_object');  
    })
  router.post('/add',(req,res)=>{ 
    insertQuery.add(req.body,'audit_objectives',res); 
    })
  router.put('/update',(req,res)=>{
    insertQuery.add(req.body,'audit_objectives',req.body.criateria,req.body.connector,res); 
    })
  router.delete('/delete',(req,res)=>{  
    deleteQuery.deleteOperation(req.body,'audit_objectives',res); 
    })
  

module.exports = router;