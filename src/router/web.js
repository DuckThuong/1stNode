import express from "express";
import homeController from "../controller/homeController";
import lectureController from "../controller/lectureController";
import userController from "../controller/userController";
let router = express.Router();

const WebRouter = (app) => {
  router.get("/", homeController.getHomePage);
  router.get("/user-page", userController.getUserPage);
  router.get("/lecture-page", lectureController.getLecturePage);
  return app.use("/", router);
};
export default WebRouter;
