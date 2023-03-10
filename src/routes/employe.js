const express = require("express");
const router = express.Router();

const selectQeury=require('../util/select_query');
const insertQuery=require('../util/registration.js');
const deleteQuery=require('../util/delete');
const updateQuery=require('../util/update');

router.get('/get',(req,res)=>{
    selectQeury.getAll(res,'employe','employe');   
    })
router.post('/get/one',(req,res)=>{
        selectQeury.selectCriateria(res,'employe',req.body.id);   
        })
  
router.post('/add',(req,res)=>{
      insertQuery.add(req.body,'employe',res);   
      })
  
router.delete('/delete',(req,res)=>{
   deleteQuery.deleteOperation(req.body,'employe',res);   
        })
  
router.put('/update',(req,res)=>{
    updateQuery.update(req.body.body,'employe',req.body.criateria,req.body.connector,res);   
              })
module.exports = router;
  