const express=require('express');
const app=express();
const nodemailer = require('nodemailer');
const https = require('https')
const cores =require('cors')

//custome imports 
const selectQeury=require('./util/select_query.js');
const insertQuery=require('./util/registration.js');
const deleteQuery=require('./util/delete');
const updateQuery=require('./util/update');


const planRoutes = require("./routes/plan");
const auditObjectRoutes = require("./routes/audit_object");
const auditObjectiveRoutes = require("./routes/aduit_objectives");

const auditAreaRoutes=require("./routes/auditable_area");
const checklistRoutes=require("./routes/checklist");
const programRoutes=require("./routes/audit_program");

const questionerRoutes=require("./routes/audit_questioner");
const auditStatusRoutes=require("./routes/audit_status");
const auditTypeRoutes=require("./routes/audit_type");

const employeRoutes=require("./routes/employe");
const employeeOuRoutes=require("./routes/employee_ou");
const enagamentToAuditesRoutes=require("./routes/engagement_to_audtees");

const organCategoryRoutes=require("./routes/organ_category");
const engaToOuRoutes=require("./routes/engagement_to_ou");
const organizationUnitRoutes=require("./routes/ou");

const pomRoutes=require("./routes/p_o_m");
const programActivityRoutes=require("./routes/program_activity");
const rectificationRoutes=require("./routes/rectification_record");

const subTeamMemeberRoutes=require("./routes/sub_team_members");
const subTeamRoutes=require("./routes/sub_team");
const teamRoutes=require("./routes/team");

const unitLevelRoutes=require("./routes/unit_l");
const userRoutes=require("./routes/utable");
const findingRoutes=require("./routes/audit_finding")



var host = 'https://hiramailer.herokuapp.com/em';

app.options('*',cores())
const path = require('path')

app.use(cores())
app.use('/static', express.static(path.join(__dirname, '../public')))
app.use(
    express.urlencoded({
      extended: true
    })
  )
  app.use(express.json())

  
//////////////////////////////////////////////===Route===////////////////////////
// 1 audit_plan
  app.use("/plan", planRoutes);
//2 audit_object
  app.use("/object",auditObjectRoutes)
//3 audit_objective
  app.use("/objective",auditObjectiveRoutes)
//4 auditable_area
  app.use("/object",auditAreaRoutes)
//5 audit_checklist
  app.use("/checklist",checklistRoutes)
//6 audit_program
  app.use("/program",programRoutes)
//7 audit_questioner
  app.use("/quetioner",questionerRoutes)
//8 audit_status
  app.use("/status",auditStatusRoutes)
//9 audit_type
  app.use("/type",auditTypeRoutes)
//10 employe
    app.use("/employe",employeRoutes)
//11 employee_ou
    app.use("/eu",employeeOuRoutes)
//12 engagement_to_audtees
    app.use("/eta",enagamentToAuditesRoutes)
//13 organ_category
    app.use("/oc",organCategoryRoutes)
//14 engagement_to_ou
    app.use("/etu",engaToOuRoutes)
//15 ou
    app.use("/ou",organizationUnitRoutes)
//16 p_o_m
    app.use("/pom",pomRoutes)
//17 program_activity
    app.use("/pa",programActivityRoutes)
//18 rectification_record
    app.use("/rect",rectificationRoutes)
//19 sub_team
    app.use("/st",subTeamRoutes)
//20 sub_team_members
    app.use("/stm",subTeamMemeberRoutes)
//21 team
    app.use("/team",teamRoutes)
//22 unit_l
    app.use("/unitl",unitLevelRoutes)
//23 utable
    app.use("/user",userRoutes)
//24 audit_finding
    app.use("/finding",findingRoutes)


//   app.get('/audito',(req,res)=>{
//     commands.getAll(res,'internalAuditor','auditor');   
//     })

// app.get('/plan',(req,res)=>{
//   commands.getAll(res,'audit_plan','audit_plan');   
// })

//   app.get('/service2',(req,res,next)=>{
//     res.send(docuemnt)

//   })
      
//   app.get('/document',(req,res,next)=>{
  
//   res.send(docuemnt)
// })

app.listen(8080)