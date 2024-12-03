import express from "express";
import cors from "cors";
import configViewEngine from "./configs/viewEngine";
import ApiRouter from "./router/api";
require("dotenv").config();
const app = express();
const post = process.env.PORT;
const local = process.env.LOCAL_HOST;

app.use(cors());

//ViewEngine Config
configViewEngine(app);

//Router
app.use(ApiRouter);

//App landing
app.listen(post, local, () => {
  console.log(`Is running at ${local} ${post}`);
});
