import { validateMomentsForm } from "../utils/helper.js";
import connection from "../utils/mysql.js";

// const getMonumentsByCategory = async (req, res) => {
//   const { category } = req.query;

//   if (!category) {
//     return res.status(400).json({ message: "Category is required" });
//   }

//   const sql = "SELECT name FROM monuments WHERE category = ?";

//   try {
//     const [results] = await connection.query(sql, [category]);

//     if (!results.length) {
//       return res
//         .status(404)
//         .json({ message: "No monuments found for this category" });
//     }

//     res.json(results);
//   } catch (error) {
//     console.error(error);
//     res.status(500).json({ error: error.message });
//   }
// };

// const getCategoryImages = async (req, res) => {
//   const { category } = req.query;

//   if (!category) {
//     return res.status(400).json({ message: "Category is required" });
//   }

//   const sql = "SELECT image_url FROM category_images WHERE category = ?";

//   try {
//     const [results] = await connection.query(sql, [category]);

//     if (!results.length) {
//       return res
//         .status(404)
//         .json({ message: "No images found for this category" });
//     }
//     res.json(results);
//   } catch (error) {
//     console.error(error);
//     res.status(500).json({ error: error.message });
//   }
// };

const getAllMonuments = async (req, res) => {
  const { categories } = req.query;

  let sql = "SELECT * FROM monuments";

  if (categories) {
    sql += " WHERE category IN (?) ";

    try {
      const [results] = await connection.query(sql, [categories.split(",")]);

      if (!results.length) {
        return res
          .status(404)
          .json({ message: "No monuments found for selected categories" });
      }

      return res.json(results);
    } catch (error) {
      console.log(error);
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

// const getAllCategory = async (_req, res) => {
//   const sql = "SELECT DISTINCT category FROM monuments";

//   try {
//     const [results] = await connection.query(sql);

//     if (!results.length) {
//       return res.status(404).json({ message: "No category listed in DB" });
//     }

//     res.json(results);
//   } catch (error) {
//     res.status(500).json({ error: error.message });
//   }
// };

const addMonument = async (req, res) => {
  const formData = req.body;
  const sql = "INSERT INTO monuments SET ?";

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

export {
  getAllMonuments,
  addMonument,
  // getAllCategory,
  // getCategoryImages,
  // getMonumentsByCategory,
};
