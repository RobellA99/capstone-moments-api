import express from "express";
import {
  getCategoryImages,
  getMonumentsByCategory,
  getAllCategory,
} from "../controllers/categoryController.js";

const router = express.Router();

router.route("/category").get(getAllCategory);
router.route("/category/images").get(getCategoryImages);
router.route("/category/monuments").get(getMonumentsByCategory);

export default router;
