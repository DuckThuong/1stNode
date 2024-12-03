import express from "express";

const getHomePage = async (req, res) => {
  return res.render("home.ejs");
};
export default {
  getHomePage,
};
