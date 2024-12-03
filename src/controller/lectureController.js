import express from "express";

const router = express.Router();
const lectures = [
  { name: "Lecture 1", instructor: "Instructor A", time: "10:00 AM" },
  { name: "Lecture 2", instructor: "Instructor B", time: "11:00 AM" },
];
const getLecturePage = async (req, res) => {
  return res.render("lecture.ejs", { lectures: lectures });
};
export default {
  getLecturePage,
};
