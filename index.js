import express from "express";
import cors from "cors";
import "dotenv/config";
import monumentRoutes from "./routes/monumentRoutes.js";
import categoryRoutes from "./routes/categoryRoutes.js";
import path from "path";

const PORT = process.env.PORT || 5050;

const app = express();
app.use(express.json());

app.use(cors({ origin: process.env.FRONTEND_URL }));

const __dirname = path.resolve();
app.use("/assets", express.static(path.join(__dirname, "assets")));

app.get("/", (_req, res) => {
  res.send("App is running...");
});

app.use("/monuments", monumentRoutes);
app.use("/category", categoryRoutes);

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
