import express from "express";
import {
  addMonument,
  getAllCategories,
  getAllMonuments,
} from "../controllers/monumentController.js";

const router = express.Router();

router.route("/").get(getAllMonuments).post(addMonument);

router.route("/categories").get(getAllCategories);

export default router;
