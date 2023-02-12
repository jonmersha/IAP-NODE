const express = require("express");
const router = express.Router();

const selectQeury=require('../util/select_query');
const insertQuery=require('../util/registration.js');
const deleteQuery=require('../util/delete');
const updateQuery=require('../util/update');

router.get('/get',(req,res)=>{
    selectQeury.getAll(res,'sub_team_members','sub_team_members');   
    })
    
router.post('/add',(req,res)=>{
        insertQuery.add(req.body,'sub_team_members',res);   
        })
router.delete('/delete',(req,res)=>{
    
  deleteQuery.deleteOperation(req.body,'sub_team_members',res);   
          })
router.put('/update',(req,res)=>{
      updateQuery.update(req.body.body,'sub_team_members',req.body.criateria,req.body.connector,res);   
                })


module.exports = router;