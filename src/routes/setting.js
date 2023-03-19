const express = require("express");
const router = express.Router();

const selectQeury = require("../util/select_query");
const insertQuery = require("../util/registration.js");
const deleteQuery = require("../util/delete");
const updateQuery = require("../util/update");

router.get("/risk/get", (req, res) => {
  selectQeury.getAll(res, "risk_level", "risk_level");
});

router.get("/year/get", (req, res) => {
  selectQeury.getAll(res, "plan_year", "plan_year");
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
