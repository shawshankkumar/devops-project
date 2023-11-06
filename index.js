const express = require('express')
const app = express();

app.all('*', function(req, res) {
  res.send('Hello World all')
})
app.all('/yo', function(req, res) {
  res.send('Hello World yo')
})

app.all('/yolo', function(req, res) {
  res.send('Hello World yolo')
})



app.listen(3000)
