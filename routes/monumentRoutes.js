import express from "express";
import { getAllMonuments } from "../controllers/monumentController.js";

const router = express.Router();

router.get("/", getAllMonuments);

export default router;
