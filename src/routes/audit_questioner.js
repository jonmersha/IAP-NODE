const express = require("express");
const router = express.Router();

const selectQeury=require('../util/select_query');
const insertQuery=require('../util/registration.js');
const deleteQuery=require('../util/delete');
const updateQuery=require('../util/update');

router.get('/get',(req,res)=>{
    selectQeury.getAll(res,'audit_questioner','audit_questioner');   
    })
  
router.post('/add',(req,res)=>{
      insertQuery.add(req.body,'audit_questioner',res);   
      })
router.delete('/delete',(req,res)=>{
  
   deleteQuery.deleteOperation(req.body,'audit_questioner',res);   
        })
router.put('/update',(req,res)=>{
    updateQuery.update(req.body.body,'audit_questioner',req.body.criateria,req.body.connector,res);   
              })

module.exports = router;