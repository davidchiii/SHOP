import express from 'express';
const app = express()
const port = 3000

app.get('/health', (req, res) => {
  res.send('Hello World!')
})

app.get("/api/items", (req, res) => {
    // Query database and return response formatted
    res.send("")
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
