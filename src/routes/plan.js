const express = require("express");
const router = express.Router();

const selectQeury = require("../util/select_query");
const insertQuery = require("../util/registration.js");
const deleteQuery = require("../util/delete");
const updateQuery = require("../util/update");

router.get("/get", (req, res) => {
  selectQeury.getAll(res, "audit_plan", "audit_plan");
});

router.post("/get/one", (req, res) => {
  selectQeury.allWithCriateria(res, "audit_plan", req);
});
router.post("/view/one", (req, res) => {
  selectQeury.allWithCriateria(res, "plan_list", req);
});
router.get("/view", (req, res) => {
  selectQeury.getAll(res, "plan_list", "plan_list");
});
router.post("/add", login, (req, res) => {
  //console.log("PLan Add");
  //console.log("this is plan add");
  //res.send(req.body);
  insertQuery.add(req.body, "audit_plan", res);
});
router.delete("/delete", (req, res) => {
  deleteQuery.deleteOperation(req.body, "audit_plan", res);
});
router.put("/update", (req, res) => {
  updateQuery.update(
    req.body.body,
    "audit_plan",
    req.body.criateria,
    req.body.connector,
    res
  );
});
router.get("/get", (req, res) => {
  selectQeury.getAll(res, "audit_plan", "audit_plan");
});

function login(req, res, next) {
  const user = req.body.user;
  // if (!authorization || authorization !== apiKey) {
  // return res.status(401).json({ message: 'Invalid API key.' });
  // }
  //perform login operations
  //get users from user tble
  // return res.send(user);

  next();
}
module.exports = router;
