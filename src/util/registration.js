const con=require('../data/database.js')


function add(json,tableName,res){
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
                message:" Registereduplicate Entry",
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
                    message:tableName+" Registered",
                    affectedRows:result.affectedRows,
                    id:result.insertId
                }
                res.send(rsp);  
        }
    })
}

module.exports={add}