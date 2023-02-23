create View plan_list as SELECT
    audit_plan.id AS 'plan_id',
    audit_plan.audit_subject AS 'audit_id',
    audit_object.name AS 'audit_name',
    audit_plan.auditees AS 'auditees_id',
    ou.name AS 'auditees_name',
    audit_plan.team_id AS 'audit_team_id',
    audit_type.name AS 'audit_team_name',
    audit_plan.audit_type AS 'audit_tyep',
    audit_plan.audit_year AS 'year_id',
    plan_year.name as 'plan_year',
    audit_plan.risk_score AS 'risk_score',
    audit_plan.risk_level AS 'risk_level_id',
    plan_year.plan_start_date AS 'plan_start_date',
    plan_year.plan_end_date AS 'plan_end_date',
    audit_plan.quarter_p AS 'quarter',
    audit_plan.month_p AS 'month',
    audit_plan.rect_status,
    audit_plan.rectification_percentage,
    audit_plan.audit_status
FROM
    `audit_plan`
LEFT JOIN `audit_object` ON `audit_plan`.`audit_subject` = `audit_object`.`id`
LEFT JOIN `ou` ON `audit_plan`.`auditees` = `ou`.`id`
LEFT JOIN `plan_year` ON `audit_plan`.`audit_year` = `plan_year`.`id`
LEFT JOIN `audit_type` ON `audit_object`.`audit_cat` = `audit_type`.`id`;
create View plan_list as SELECT
    audit_plan.id AS 'plan_id',
    audit_plan.audit_subject AS 'audit_id',
    audit_object.name AS 'audit_name',
    audit_plan.auditees AS 'auditees_id',
    ou.name AS 'auditees_name',
    audit_plan.team_id AS 'audit_team_id',
    audit_type.name AS 'audit_team_name',
    audit_plan.audit_type AS 'audit_tyep',
    audit_plan.audit_year AS 'year_id',
    plan_year.name as 'plan_year',
    audit_plan.risk_score AS 'risk_score',
    audit_plan.risk_level AS 'risk_level_id',
    plan_year.plan_start_date AS 'plan_start_date',
    plan_year.plan_end_date AS 'plan_end_date',
    audit_plan.quarter_p AS 'quarter',
    audit_plan.month_p AS 'month',
    audit_plan.rect_status,
    audit_plan.rectification_percentage,
    audit_plan.audit_status
FROM
    `audit_plan`
LEFT JOIN `audit_object` ON `audit_plan`.`audit_subject` = `audit_object`.`id`
LEFT JOIN `ou` ON `audit_plan`.`auditees` = `ou`.`id`
LEFT JOIN `plan_year` ON `audit_plan`.`audit_year` = `plan_year`.`id`
LEFT JOIN `audit_type` ON `audit_object`.`audit_cat` = `audit_type`.`id`;


-- ============new 
