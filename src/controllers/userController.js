export const getAllUser = async (req, res) => {
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
};

async function getUsersFromDatabase() {
  return [
    {
      username: "admin",
      email: "admin@gmail.com",
      password: "123456a@",
      verifyCode: "11111111",
    },
    {
      username: "TuanAnh",
      email: "nguyentuananh-it@gmail.com",
      password: "nguyentuananh-it",
      verifyCode: "22222222",
    },
    {
      username: "KhanhHung",
      email: "KhanhHungTran@gmail.com",
      password: "KhanhHungTran",
      verifyCode: "33333333",
    },
  ];
}