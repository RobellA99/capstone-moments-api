import express from "express";
import {
  addMonument,
  getAllCategory,
  getAllMonuments,
} from "../controllers/monumentController.js";

const router = express.Router();

router.route("/").get(getAllMonuments).post(addMonument);
router.route("/category").get(getAllCategory);

export default router;
