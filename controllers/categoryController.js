import connection from "../utils/mysql.js";

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

const getMonumentsByCategory = async (req, res) => {
  const { category } = req.query;

  if (!category) {
    return res.status(400).json({ message: "Category is required" });
  }

  const sql = "SELECT name FROM monuments WHERE category = ?";

  try {
    const [results] = await connection.query(sql, [category]);

    if (!results.length) {
      return res
        .status(404)
        .json({ message: "No monuments found for this category" });
    }

    res.json(results);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: error.message });
  }
};

const getCategoryImages = async (req, res) => {
  const { category } = req.query;

  if (!category) {
    return res.status(400).json({ message: "Category is required" });
  }

  const sql = "SELECT image_url FROM category_images WHERE category = ?";

  try {
    const [results] = await connection.query(sql, [category]);

    if (!results.length) {
      return res
        .status(404)
        .json({ message: "No images found for this category" });
    }
    res.json(results);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: error.message });
  }
};

export { getAllCategory, getCategoryImages, getMonumentsByCategory };
