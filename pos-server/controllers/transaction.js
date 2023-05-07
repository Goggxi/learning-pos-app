const db = require("../configs/connection");

exports.checkout = async (data) => {
  try {
    const query = await db.query("INSERT INTO transactions SET ?", [data]);
    if (!query.affectedRows) {
      return { success: false, message: "Failed to create transaction" };
    }
    return { success: true, message: "Transaction created successfully" };
  } catch (error) {
    return { success: false, message: error };
  }
}