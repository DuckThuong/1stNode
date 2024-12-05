import express from "express";
import { getAllUser } from "../controllers/userController.js";
import { getAllStudent,getStudentById } from "../controllers/studentController.js";
const router = express.Router();

router.get("/api/getAllUser", getAllUser);
router.get("/api/student/getAllStudent",getAllStudent)
router.get("/api/student/getStudentById/:id",getStudentById)
export default router;
