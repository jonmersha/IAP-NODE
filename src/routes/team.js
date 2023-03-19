const express = require("express");
const router = express.Router();

const selectQeury = require("../util/select_query");
const insertQuery = require("../util/registration.js");
const deleteQuery = require("../util/delete");
const updateQuery = require("../util/update");

router.get("/get", (req, res) => {
  selectQeury.getAll(res, "team", "team");
});
router.get("/emp/get", (req, res) => {
  console.log();
  selectQeury.getAll(res, "audito_team", "audito_team");
});
//get auditor Team
router.post("/emp/get", (req, res) => {
  console.log(req.body);
  selectQeury.allWithCriateria(res, "audito_team", req);
});

router.post("/add", (req, res) => {
  insertQuery.add(req.body, "team", res);
});
router.delete("/delete", (req, res) => {
  deleteQuery.deleteOperation(req.body, "team", res);
});
router.put("/update", (req, res) => {
  updateQuery.update(
    req.body.body,
    "team",
    req.body.criateria,
    req.body.connector,
    res
  );
});

module.exports = router;
