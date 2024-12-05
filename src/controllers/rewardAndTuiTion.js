//CRUD: Create-Update-Read-Delete
export const getAllReward = async (req, res) => {
  try {
    const reward = await getAllStudentFromDataBase();
    if (!students || students.length === 0) {
      return res.status(404).json({ message: "No students found" });
    }
    res.status(200).json(students);
  } catch (error) {
    console.error("Error fetching students:", error);
    res.status(500).json({ message: "Internal server error" });
  }
};

export const getRewardById = async (req, res) => {
  try {
    const students = await getAllStudentFromDataBase();
    const studentId = req.params.id;
    const student = students.find((s) => s.studentMsv === studentId);

    if (!student) {
      return res.status(404).json({ message: "Student not found" });
    }
    res.status(200).json(student);
  } catch (error) {
    console.error("Error fetching student by ID:", error);
    res.status(500).json({ message: "Internal server error" });
  }
};
