const express = require("express");
const router = express.Router();

const selectQeury=require('../util/select_query');
const insertQuery=require('../util/registration.js');
const deleteQuery=require('../util/delete');
const updateQuery=require('../util/update');

router.get('/get',(req,res)=>{
    selectQeury.getAll(res,'engagement_to_audtees','engagement_to_audtees');   
    })
  
    router.post('/add',(req,res)=>{
      insertQuery.add(req.body,'engagement_to_audtees',res);   
      })
  
      router.delete('/delete',(req,res)=>{
   deleteQuery.deleteOperation(req.body,'engagement_to_audtees',res);   
        })
        
        router.put('/update',(req,res)=>{
    updateQuery.update(req.body.body,'engagement_to_audtees',req.body.criateria,req.body.connector,res);   
              })
module.exports = router;
  