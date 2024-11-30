import express from "express";
import configViewEngine from "./configs/viewEngine";
import WebRouter from "./router/web";
require("dotenv").config();
const app = express();
const post = process.env.PORT;
const local = process.env.LOCAL_HOST;

//ViewEngine Config
configViewEngine(app);

//Router
WebRouter(app);

//App landing
app.listen(post, local, () => {
  console.log(`Is running at ${local} ${post}`);
});
