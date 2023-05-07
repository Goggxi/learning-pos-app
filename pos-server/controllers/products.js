const db = require("../configs/connection");

exports.getAllProducts = async () => {
  try {
    const query = await db.query("SELECT * FROM products");
    if (!query.length) {
      return { success: false, message: "No product found" };
    }
    return { success: true, message: "Product found", data: query };
  } catch (error) {
    return { success: false, message: error };
  }
}

exports.createProduct = async (data) => {
  try {
    const query = await db.query("INSERT INTO products SET ?", [data]);
    if (!query.affectedRows) {
      return { success: false, message: "Failed to create product" };
    }
    return { success: true, message: "Product created successfully" };
  } catch (error) {
    return { success: false, message: error };
  }
}