const path = require('path');
const express = require('express');
const app = express();

app.use(express.static(path.resolve(__dirname, 'dist')));

const PORT = process.env.PORT || 8080;

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
