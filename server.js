const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const PORT = 5000;

// Middleware
app.use(cors({ origin: 'http://localhost:61080/' })); 
app.use(bodyParser.json());

// Example data storage
let users = [];

// Routes
app.get('/', (req, res) => {
  res.send('Welcome to the Backend API');
});

app.get('/api/user', (req, res) => {
  res.json(users);
});

app.post('/api/user/create', (req, res) => {
  const { name, email } = req.body;
  if (name && email) {
    const newUser = { id: users.length + 1, name, email };
    users.push(newUser);
    res.status(201).json(newUser);
  } else {
    res.status(400).json({ message: 'Name and email are required!' });
  }
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
