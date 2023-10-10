const mongoose = require('mongoose');
const { Schema } = mongoose;

const TradicionalSchema = new Schema({
    orden: { type: String, required: true },
    nombre: { type: String, required: true },
    precio: { type: String, required: true },
    descripcion: { type: String, required: true }
});

module.exports = mongoose.model("Tradicional", TradicionalSchema);