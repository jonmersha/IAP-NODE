const con=require('../data/database.js')
const nodemailer = require('nodemailer');

const bcrypt = require('bcrypt');
const saltRounds = 10;

function selectCriateria(res,req,tableName){ 

    var criteria=req.body.criateria;
    const collumList=req.body.body;
    const whereStatment = Object.keys(criteria).map(key => `${key} = '${criteria[key]}'`).join(` ${req.body.connector} `);
    const selectStatement = `SELECT ${collumList} FROM ${tableName} WHERE user_name='${criteria.user_name}'`;
   
   // console.log(selectStatement)
    exeLogin(res,req,selectStatement);
}

function exeLogin(res,req,command){
///console.log(req.body.criateria.pswd)
    con.query(command,(err,result)=>{
        if(err){
            let rsp={
                success:false,
                message:err.code,
                response:err
            }
            res.send(rsp)
        }
        else{
            let statutu=true;
            let message="excecusion succefully completed";
            if(result.length==0){
                statutu=false;
                message='invalid user name/password'
                let rsp={
                    success:statutu,
                    message:message,
                    user:result,
                }
                res.send({data:rsp})
            }
            else{
               if((result[0].is_active==0) || (result[0].lock_status = 0)){
                statutu=false;
                message='Your account is not activated or It is locked'
                let rsp={
                    success:statutu,
                    message:message,
                    user:[],
                }
                res.send({data:rsp})
               } 
               else{
                //console.log(req.body.pswd);
                bcrypt.compare(req.body.criateria.pswd, result[0].pswd, function(err, results) {
                    if (err) {
                     // console.error(err);
                    } else if (results) {
                        statutu=true;
                        message='Succesfuly loged in'
                        result[0].pswd=''
                        let rsp={
                            success:statutu,
                            message:message,
                            user:result,
                        }
//geting the users details form users Table
                        res.send({data:rsp})

                    } else {
                        statutu=false;
                        message='Invalid User name/password'
                        result=[];
                        let rsp={
                            success:statutu,
                            message:message,
                            user:result,
                        }
                        res.send({data:rsp})
                    }
                  });

               }
            }
            
            
            
        }
        
    })

}
function adduser(res,req,tablename){
    bcrypt.hash(req.body.pswd, 10, function(err, hash) {
        if (err) {
          console.error(err);
        } else {
        req.body.pswd=hash
        cretaeStatment(req.body,tablename,res)
        }
      });
}


function cretaeStatment(json,tableName,res){
    const columns = Object.keys(json).join(", ");
    const values = Object.values(json).map(value => `'${value}'`).join(", ");
    const insertStatement = `INSERT INTO ${tableName} (${columns}) VALUES (${values});`;
     execute(res,insertStatement,tableName);
}


function execute(res,command,tableName){
    con.query(command,(err,result)=>{
        if(err)
        if(err.code==='ER_DUP_ENTRY'){
            let rsp={
                status:false,
                message:" The User name Is already Exists",
                affectedRows:0,
                id:0
            }
         res.send(rsp)
        }

         else{
            let rsp={
                status:false,
                message:err,
                affectedRows:0,
                id:0
            }

         res.send(rsp)
         }
        else
        {
                let rsp={
                    status:true,
                    message:"User Created",
                    affectedRows:result.affectedRows,
                    id:result.insertId
                }
                res.send(rsp);  
        }
    })
}

module.exports={selectCriateria,adduser}
