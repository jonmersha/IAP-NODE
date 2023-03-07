const express = require("express");
const router = express.Router();

const selectQeury=require('../util/select_query');
const insertQuery=require('../util/registration.js');
const deleteQuery=require('../util/delete');
const updateQuery=require('../util/update');
const userMan=require('../util/user_management');



router.get('/get',(req,res)=>{
    selectQeury.getAll(res,'utable','utable');   
    })

router.post('/add',(req,res)=>{
        userMan.adduser(res,req,'utable');   
        })
router.delete('/delete',(req,res)=>{
    
  deleteQuery.deleteOperation(req.body,'utable',res);   
          })
router.put('/update',(req,res)=>{
      updateQuery.update(req.body.body,'utable',req.body.criateria,req.body.connector,res);   
                })
router.post('/login',(req,res)=>{
        userMan.selectCriateria(res,req,'utable');   
});
           
module.exports = router;