import express from "express";
import {
  addMonument,
  getAllCategory,
  getAllMonuments,
  getCategoryImages,
  getMonumentsByCategory,
} from "../controllers/monumentController.js";

const router = express.Router();

router.route("/").get(getAllMonuments).post(addMonument);
router.route("/category").get(getAllCategory);
router.route("/category/images").get(getCategoryImages);
router.route("/category/monuments").get(getMonumentsByCategory);

export default router;
