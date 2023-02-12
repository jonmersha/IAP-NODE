create table internalAuditTeam(
	teamID int primary key auto_increment,
    teamName varchar(100),
    teamManagerID int
);
insert into internalAuditTeam(teamName,teamManagerID) values('IT and System AUdit Team',1);

create table internalAuditor(
	id int primary key auto_increment,
    employementID varchar(100),
    firstName varchar(100),
    midleName varchar(100),
    lastName varchar(100),
    desgnation int,
    team int,
    joinigDate date,
    email_id varchar(100),
    corporate_email varchar(100)
    
);

insert into internalAuditor(
employementID,
firstName,
midleName,
lastName,
desgnation,
team,
email_id,
corporate_email) values(
'03994',
'Yohannes',
'Mitike',
'Mersha',
3,
1,
'jonmersha@gmail.com',
'yohannesm@coopbankoromia.com.et'
);

create table statusLookUp(
	statusID int primary key auto_increment,
    StatusDescription varchar(100)
);
create table AuditEngagement(
	engagementID int primary key auto_increment,
    planID int,
    createdBY int,
    creationDate date,
    startDate date,
    endDate date, 
    engStatus int
);
create table auditAssignement(
	id int primary key auto_increment,
    engagementID int,
    auditor_id int,
    responsiblity varchar(50)
);

create table auditParogram(
	engagementID int primary key,
	planID int,
    documentPath varchar(100),
    uloadedBy int,
    uploadTimeStamp timestamp,
    isPlanApproved boolean
);
create table findings(
	planID int,
    findingID int,
    findingDetail varchar(1000),
    auditCriteri varchar(1000),
    recomendations varchar(1000),
    audteesRespose varchar(1000),
    rectificationsStatu boolean
);
create table reportIntermediate(
	report_id int primary key,
    reportSummary varchar(2000),
    reportObjectives varchar(2000),
    reportScope varchar(2000),
    methodology varchar(2000),
    conclussions varchar(2000),
    generationTim timestamp
);
create table finalReport(
	reportId int primary key,
    reportFilePath varchar(200),
    reportUploadTime varchar(200),
    isapprived boolean
);
create table audit_plan(
	planID int primary key auto_increment,
    planStartDate date,
    planEndDate date,
    auditName varchar(200),
    engQuarter int,
    engmonth int,
    auditGroup int,
    overalRiskScore int
);

create table engagementQuarter(
	id int primary key,
    engQuarterName varchar(100),
    quarterStart varchar(100),
    quarterEnd varchar(100)
);

create table monthLookUp(
	id int primary key,
    monthNameEN varchar(50),
    monthNameAM varchar(50),
    monthNameORO varchar(50)
    
);

create table auditType(
	id int primary key auto_increment,
    auditName varchar(100),
    typeDescription varchar(1000),
    auditTeam int
);

create table liveChecklist(
	id int primary key 
);

create table controls(
	id int primary key,
    controlName varchar(100),
    controlObjectives varchar(100)
);

create table risk(
	riskId int primary key,
    riskName varchar(100),
    riskCategory int,
    riskType int,
    mitigatingControls varchar(1000)
);

create table checklist(
	id int primary key auto_increment,
    planID int,
    chacklistPath varchar(100),
    dateUpoloaded date,
    isApproved boolean,
    approvaleDate date,
    uploder int,
    approver int
);
create table procedurs(
	docID int primary key auto_increment,
    docName varchar(200) unique,
    docPath varchar(200),
    docDescription varchar(200)
);


create table findingEditHistory(
	hist_id int primary key auto_increment,
    engamentID int,
    editTime int,
    editedBY int,
    findingDetails varchar(2000)
);

create table recomendationsEditHistory(
	hist_id int primary key auto_increment,
    engamentID int,
    editTime int,
    editedBY int,
    recoemndationsDetails varchar(2000)
);

create table bankOrgns(
	orgID int primary key,
    orgnaName varchar(100),
    orgLevel int,
    orgParet int,
    orgLeader int
);
create table organLeader(
	id int primary key auto_increment,
    employementID varchar(100),
    firstName varchar(100),
    midleName varchar(100),
    lastName varchar(100),
    desgnation int,
    organ int,
    joinigDate date,
    email_id varchar(100),
    corporate_email varchar(100)
	
);
