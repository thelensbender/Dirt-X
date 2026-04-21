const express = require('express');
const path = require('path');
const app = express();

// Serve everything from dist/
app.use(express.static(path.join(__dirname, 'dist')));

// Fallback to index.html
app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => console.log(`Running on port ${PORT}`));