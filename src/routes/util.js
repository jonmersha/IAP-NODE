const express = require("express");
const router = express.Router();

const selectQeury = require("../util/select_query");
const insertQuery = require("../util/registration.js");
const deleteQuery = require("../util/delete");
const updateQuery = require("../util/update");

router.post("/month/get", (req, res) => {
  //selectQeury.getAll(res, "month_in_quarter", "month_in_quarter");
  selectQeury.allWithCriateria(res, "month_in_quarter", req);
});

router.get("/month/get", (req, res) => {
  //selectQeury.getAll(res, "month_in_quarter", "month_in_quarter");
  selectQeury.getAll(res, "month_in_quarter", req);
});
router.get("/quarter/get", (req, res) => {
  selectQeury.getAll(res, "quarter", "quarter");
});

module.exports = router;
