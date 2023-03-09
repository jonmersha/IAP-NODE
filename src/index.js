const express=require('express');
const app=express();
const nodemailer = require('nodemailer');
const https = require('https')
const cores =require('cors')
const crypto = require('crypto');

//custom imports 
const selectQeury=require('./util/select_query.js');
const insertQuery=require('./util/registration.js');
const deleteQuery=require('./util/delete');
const updateQuery=require('./util/update');


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

//cheking for API keys
  //app.use((req, res, next) => {
    
    // console.log(apiKey)
    // const { authorization } = req.headers;
    // if (!authorization || authorization !== apiKey) {
    // return res.status(401).json({ message: 'Invalid API key.' });
    // }
    //next();
 // })
  
  // checking user login
  // app.use((req, res, next) => {
  //   //console.log('Second middleware function')
  //   var credentioals=req.body.credentials
  //   next()
  // })


  const apiKey="0e9ef6df783b003d8c0300ac4656a142"
  app.use((req,res,next)=>{
    const { authorization } = req.headers;
    if (!authorization || authorization !== apiKey) {
      return res.status(401).json({data:{ 
        success:false,
        message: 'Invalid API key' }});
    }
    next();
  });



//   function apiKeyMiddleware(req, res, next) {
//     console.log(apiKey)
//   const { authorization } = req.headers;
//   if (!authorization || authorization !== apiKey) {
//     return res.status(401).json({ message: 'Invalid API key.detected' });
//   }
//   next();
// }


  // app.use((req,res)=>{
  //   return  res.status(401).json({ message: 'Invalid API key.' });
  // })

  app.get("/tt",(req,res)=>{
    res.send('Initial Help help')
  })

//////////////////////////////////////////////===Route===////////////////////////
// 1 audit_plan
    const planRoutes = require("./routes/plan");
    app.use("/plan", planRoutes);

//2 audit_object
    const auditObjectRoutes = require("./routes/audit_object");
    app.use("/object",auditObjectRoutes)

    

//3 audit_objective
    const auditObjectiveRoutes = require("./routes/aduit_objectives");
    app.use("/objective",auditObjectiveRoutes)

//4 auditable_area
    const auditAreaRoutes=require("./routes/auditable_area");
    app.use("/area",auditAreaRoutes)

//5 audit_checklist
    const checklistRoutes=require("./routes/checklist");
    app.use("/checklist",checklistRoutes)

//6 audit_program
    const programRoutes=require("./routes/audit_program");
    app.use("/program",programRoutes)

//7 audit_questioner
  const questionerRoutes=require("./routes/audit_questioner");
  app.use("/questioner",questionerRoutes)

//8 audit_status lookup table
  const auditStatusRoutes=require("./routes/audit_status");
  app.use("/status",auditStatusRoutes)

//9 audit_type
  const auditTypeRoutes=require("./routes/audit_type");
  app.use("/type",auditTypeRoutes)

//10 employe
    const employeRoutes=require("./routes/employe");
    app.use("/employe",employeRoutes)

//11 employee_ou
    const employeeOuRoutes=require("./routes/employee_ou");
    app.use("/eu",employeeOuRoutes)

//12 engagement_to_audtees
    const enagamentToAuditesRoutes=require("./routes/engagement_to_audtees");
    app.use("/eta",enagamentToAuditesRoutes)

//13 organ_category
    const organCategoryRoutes=require("./routes/organ_category");
    app.use("/oc",organCategoryRoutes)
//14 audit_engament
    const engamentRoutes=require("./routes/engagement")
    app.use("/engagement",engamentRoutes)

//15 engagement_to_ou
    const engaToOuRoutes=require("./routes/engagement_to_ou");
    app.use("/etu",engaToOuRoutes)

//16 Engament to auditees 
const engamentToAuditeesRoutes=require("./routes/engagement_to_audtees")
    app.use("/eta",engamentToAuditeesRoutes)

//17 ou
    const organizationUnitRoutes=require("./routes/ou");
    app.use("/ou",organizationUnitRoutes)

//18 Plan Object mapping
    const pomRoutes=require("./routes/p_o_m");
    app.use("/pom",pomRoutes)

//19 program_activity
    const programActivityRoutes=require("./routes/program_activity");
    app.use("/pa",programActivityRoutes)

//20 rectification_record
    const rectificationRoutes=require("./routes/rectification_record");
    app.use("/rect",rectificationRoutes)

//21 sub_team
    const subTeamRoutes=require("./routes/sub_team");    
    app.use("/st",subTeamRoutes)

//22 sub_team_members
    const subTeamMemeberRoutes=require("./routes/sub_team_members");
    app.use("/stm",subTeamMemeberRoutes)

//23 team
    const teamRoutes=require("./routes/team");
    app.use("/team",teamRoutes)

 

//24 unit_l
    const unitLevelRoutes=require("./routes/unit_l");
    app.use("/unitl",unitLevelRoutes)
//=================================================User Managemnt Part

//25 utable
    const userRoutes=require("./routes/utable");
    app.use("/user",userRoutes)

//26 audit_finding
    const findingRoutes=require("./routes/audit_finding")
    app.use("/finding",findingRoutes)

    //Risk Level
    const setting=require("./routes/setting")
    app.use("/setting",setting)


// function generateApiKey() {
//   return crypto.randomBytes(16).toString('hex');
// }

//const apiKey = generateApiKey();
// const apiKeys='0e9ef6df783b003d8c0300ac4656a142'
// function apiKeyMiddleware(req, res, next) {
//     console.log(apiKey)
//   const { authorization } = req.headers;
//   if (!authorization || authorization !== apiKeys) {
//     return res.status(401).json({ message: 'Invalid API key. detected' });
//   }
//   next();
// }

app.get('/api/users', (req, res) => {
  // Return users data
  res.send("Test Passed")
});


app.listen(8080)