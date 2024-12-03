import express from "express";

const users = [
  { name: "User 1", email: "user1@example.com" },
  { name: "User 2", email: "user2@example.com" },
];
export const getUsersFromDatabase = async () => {
  return users;
};

export default {
  getUserPage,
  getUsersFromDatabase,
};
