const express = require("express");
const router = express.Router();
const { protect } = require("../middleware/auth");

const upload = require("../middleware/uploads");

const {
  getUsers,
  getUser,
  register,
  login,
  updateUser,
  deleteUser,
  uploadImage,
} = require("../controllers/user");

router.post("/uploadImage", upload, uploadImage);
router.post("/register", register);
router.post("/login", login);
router.get("/getAllUsers", protect, getUsers);
router.put("/updateUser/:id", protect, updateUser);
router.delete("/deleteUser/:id", protect, deleteUser);

module.exports = router;
