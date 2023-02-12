const con=require('../data/database.js')

function deleteOperation(json,tableName,res){
    const key = Object.keys(json);
    const values = Object.values(json).map(value => `'${value}'`);
    const deleteStatment = `DELETE FROM  ${tableName}  where ${key} = ${values};`;
     execute(res,deleteStatment,tableName);
}

function execute(res,command,tableName){

    con.query(command,(err,result)=>{
        if(err){
            let rsp={
                status:false,
                message:err.code,
                affectedRows:0,
                id:0
            }
            res.send(rsp)
        }   
        else{
            let rsp={
                status:true,
                message:"Sucessus",
                affectedRows:result.affectedRows,
                id:result.insertId
                
            }
         res.send(rsp)
         }
       
    })
}

module.exports={deleteOperation}