const con=require('../data/database.js')


function update(json,tableName,criateria,connector,res,){
    const whereStatment = Object.keys(criateria).map(key => `${key} = '${criateria[key]}'`).join(` ${connector} `);
    const setStatements = Object.keys(json).map(key => `${key} = '${json[key]}'`).join(", ");
    
    const updateStatement = `UPDATE ${tableName} SET ${setStatements} WHERE ${whereStatment};`;
 //  res.send(updateStatement)
     execute(res,updateStatement,tableName);
}

function execute(res,command,tableName){
    con.query(command,(err,result)=>{
        if(err){
            let rsp={
                status:false,
                message:err.sqlMessage,
                affectedRows:0,
                id:0
        }
         res.send(rsp)
        }

         else{
            let rsp={
                status:true,
                message:result.message,
                affectedRows:result.affectedRows,
                id:0
            }

         res.send(rsp)
         }
       
    })
}

module.exports={update}