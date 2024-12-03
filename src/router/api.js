import express from "express";
const router = express.Router();

router.get("/api/users", async (req, res) => {
  try {
    const users = await getUsersFromDatabase();
    if (!users || users.length === 0) {
      return res.status(404).json({ message: "No users found" });
    }
    res.status(200).json(users);
  } catch (error) {
    console.error("Error fetching users:", error);
    res.status(500).json({ message: "Internal server error" });
  }
});

async function getUsersFromDatabase() {
  return [
    { name: "User 1", email: "user1@example.com" },
    { name: "User 2", email: "user2@example.com" },
  ];
}

export default router;
