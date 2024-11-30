import express from "express";
import configViewEngine from "./configs/viewEngine";
require("dotenv").config();
const app = express();
const post = process.env.PORT;
const local = process.env.LOCAL_HOST;

configViewEngine(app);
app.get("/", (req, res) => {
  res.render("about.ejs");
});

app.listen(post, local, () => {
  console.log(`Is running at ${local} ${post}`);
});
