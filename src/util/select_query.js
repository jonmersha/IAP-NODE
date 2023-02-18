const con=require('../data/database.js')
const nodemailer = require('nodemailer');


function getAll(res,tableName,containerObject){
    queryExec(res,`SELECT * FROM ${tableName}`,containerObject);
}
function getPlanList(){
    
}
function selectSome(res,tableName){
    queryExec(res,`SELECT * FROM ${tableName}`);
}


function queryExec(res,command,containerObject){
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
            let rsp={
                success:true,
                message:"excecusion succefully completed",
                response:result
            }
            res.send({data:rsp.response})
            
        }
        
    })

}


module.exports={getAll,selectSome}
