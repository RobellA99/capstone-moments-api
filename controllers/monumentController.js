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

export { getAllMonuments };
