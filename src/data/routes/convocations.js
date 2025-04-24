const express = require("express");
const router = express.Router();
const convocationController = require("../controllers/ConvocationController"); // Adjust path as necessary
const multer = require('multer');
const upload = multer();

// Route to create a new convocation
router.post("/convocations", upload.none(), convocationController.createConvocation);

// Route to retrieve all convocations
router.get("/convocations", convocationController.getAllConvocations);

// Route to retrieve a specific convocation by ID
router.get("/convocations/:id", convocationController.getConvocationById);

// Route to update a convocation by ID
router.put("/convocations/:id", upload.none(), convocationController.updateConvocation);

// Route to delete a convocation by ID
router.delete("/convocations/:id", convocationController.deleteConvocation);

module.exports = router;