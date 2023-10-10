var axios = require("axios").default;
const url = "http://localhost:5000/v1/api/goma/";

async function getGoma(req, res, next) {
    const goma = await axios.get(url); 
    res.render('goma',  { title: 'goma', goma: goma.data });
}

async function postGoma(req, res, next) {
    const { orden, nombre, precio, descripcion } = req.body;
    await axios.post(url, { orden, nombre, precio, descripcion });
    res.redirect('goma');
}



module.exports = {
    getGoma,
    postGoma
   
}