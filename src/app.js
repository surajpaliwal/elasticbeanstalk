// Express App Setup
const express = require('express');
const http = require('http');
const bodyParser = require('body-parser');
const cors = require('cors');

// Initialization
const app = express();
app.use(cors());
app.use(bodyParser.json());

// Express route handlers
app.get('/', (req, res) => {
  res.status(200).send({ text: 'Simple Node App Working!' });
});
app.get('/test', (req, res) => {
  res.status(200).send({ text: 'Simple Node App Working!' });
});
app.get('/index', (req, res) => {
  res.sendFile('index.html', {root: __dirname}); 
});

module.exports = app;
