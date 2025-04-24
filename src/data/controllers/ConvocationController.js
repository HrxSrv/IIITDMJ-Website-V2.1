const Convocation = require('../modals/convocationModal'); // Adjust path as necessary

// Controller for Convocation operations

// Create a new convocation
exports.createConvocation = async (req, res) => {
  try {
    const { 
      name, 
      data, 
      location, 
      graduating_students, 
      medal_awardees, 
      guidelines, 
      description, 
      read_more, 
      media, 
      background_image 
    } = req.body;
    
    const newConvocation = await Convocation.create({
      name,
      data,
      location,
      graduating_students: graduating_students ? JSON.parse(graduating_students) : [],
      medal_awardees: medal_awardees ? JSON.parse(medal_awardees) : [],
      guidelines: guidelines ? JSON.parse(guidelines) : [],
      description,
      read_more,
      media: media ? JSON.parse(media) : [],
      background_image
    });
    
    res.status(201).json(newConvocation);
  } catch (error) {
    console.error("Error creating convocation:", error);
    res.status(500).json({ error: "Failed to create convocation" });
  }
};

// Retrieve all convocations
exports.getAllConvocations = async (req, res) => {
  try {
    const convocations = await Convocation.findAll({
      order: [['createdAt', 'DESC']]
    });
    res.status(200).json(convocations);
  } catch (error) {
    console.error("Error fetching convocations:", error);
    res.status(500).json({ error: "Failed to fetch convocations" });
  }
};

// Retrieve a specific convocation by ID
exports.getConvocationById = async (req, res) => {
  try {
    const { id } = req.params;
    const convocation = await Convocation.findByPk(id);
    
    if (!convocation) {
      return res.status(404).json({ error: "Convocation not found" });
    }
    
    res.status(200).json(convocation);
  } catch (error) {
    console.error("Error fetching convocation:", error);
    res.status(500).json({ error: "Failed to fetch convocation" });
  }
};

// Update an existing convocation
exports.updateConvocation = async (req, res) => {
  try {
    const { id } = req.params;
    const { 
      name, 
      data, 
      location, 
      graduating_students, 
      medal_awardees, 
      guidelines, 
      description, 
      read_more, 
      media, 
      background_image 
    } = req.body;
    
    // Create update object
    const updateData = {
      name,
      data,
      location,
      description,
      read_more,
      background_image
    };
    
    // Handle JSON fields properly
    if (graduating_students) {
      updateData.graduating_students = JSON.parse(graduating_students);
    }
    
    if (medal_awardees) {
      updateData.medal_awardees = JSON.parse(medal_awardees);
    }
    
    if (guidelines) {
      updateData.guidelines = JSON.parse(guidelines);
    }
    
    if (media) {
      updateData.media = JSON.parse(media);
    }
    
    const [updated] = await Convocation.update(updateData, { where: { id } });
    
    if (!updated) {
      return res.status(404).json({ error: "Convocation not found" });
    }
    
    res.status(200).json({ message: "Convocation updated successfully" });
  } catch (error) {
    console.error("Error updating convocation:", error);
    res.status(500).json({ error: "Failed to update convocation" });
  }
};

// Delete a convocation
exports.deleteConvocation = async (req, res) => {
  try {
    const { id } = req.params;
    const deleted = await Convocation.destroy({ where: { id } });
    
    if (!deleted) {
      return res.status(404).json({ error: "Convocation not found" });
    }
    
    res.status(200).json({ message: "Convocation deleted successfully" });
  } catch (error) {
    console.error("Error deleting convocation:", error);
    res.status(500).json({ error: "Failed to delete convocation" });
  }
};