import { validateMomentsForm } from "../utils/helper.js";
import connection from "../utils/mysql.js";

const getAllMonuments = async (req, res) => {
  const { categories } = req.query;

  let sql = "SELECT * FROM monuments";

  if (categories) {
    const decodedCategories = decodeURIComponent(categories);
    sql += " WHERE category = ? ";

    const formattedCategories = decodedCategories
      .replace(/([a-z])([A-Z])/g, "$1 $2")
      .replace(/&/g, " & ");

    console.log(formattedCategories);
    try {
      const [results] = await connection.query(sql, [formattedCategories]);

      if (!results.length) {
        return res
          .status(404)
          .json({ message: "No monuments found for selected categories" });
      }

      return res.json(results);
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  }

  try {
    const [results] = await connection.query(sql);

    if (!results.length) {
      return res.status(404).json({ message: "No monuments in DB" });
    }

    res.json(results);
  } catch (error) {
    res.status(500).json(error);
  }
};

const getAllCategory = async (_req, res) => {
  const sql = "SELECT DISTINCT category FROM monuments";

  try {
    const [results] = await connection.query(sql);

    if (!results.length) {
      return res.status(404).json({ message: "No category listed in DB" });
    }

    res.json(results);
  } catch (error) {
    res.status(500).json({ error: error.message });
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

export { getAllMonuments, addMonument, getAllCategory };
