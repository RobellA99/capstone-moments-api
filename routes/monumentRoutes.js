import express from "express";
import {
  addMonument,
  getAllMonuments,
} from "../controllers/monumentController.js";

const router = express.Router();

router.route("/").get(getAllMonuments).post(addMonument);

export default router;
