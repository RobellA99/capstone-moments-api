import { validateMomentsForm } from "../utils/helper.js";
import connection from "../utils/mysql.js";

const getAllMonuments = async (_req, res) => {
  const sql = "SELECT * FROM monuments";

  try {
    const [results] = await connection.query(sql);

    if (!results.length) {
      res.status(404).json({ message: "No monuments in DB" });
    }

    res.json(results);
  } catch (error) {
    res.status(500).json(error);
  }
};

const addMonument = async (req, res) => {
  const formData = req.body;
  const sql = "INSERT INTO monuments SET ?";

  console.log(formData);
  const validationResult = validateMomentsForm(formData);

  if (!validationResult.success) {
    return res.status(400).json({ error: validationResult.error });
  }

  try {
    const [results] = await connection.query(sql, [formData]);

    res.status(201).json({ message: `Created Monument` });
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: error });
  }
};

export { getAllMonuments, addMonument };
