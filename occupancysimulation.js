const express = require("express");
const app = express();
const port = 9000;

// Sample data with the new variables
let sensorData = {
  occupancy: 10, // Occupancy set to 10
  smartFanSpeed: 1, // Example initial smart fan speed
  smartAirPurifierSpeed: 1, // Example initial air purifier fan speed
};

// Middleware to parse JSON data
app.use(express.json());

// GET endpoint to retrieve sensor data
app.get("/api/sensor", (req, res) => {
  res.json(sensorData);
});

// PUT endpoint to update sensor data
app.put("/api/sensor", (req, res) => {
  const { occupancy, smartFanSpeed, smartAirPurifierSpeed } = req.body;
  if (occupancy !== undefined) sensorData.occupancy = occupancy;
  if (smartFanSpeed !== undefined) sensorData.smartFanSpeed = smartFanSpeed;
  if (smartAirPurifierSpeed !== undefined)
    sensorData.smartAirPurifierSpeed = smartAirPurifierSpeed;

  res.json(sensorData);
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
