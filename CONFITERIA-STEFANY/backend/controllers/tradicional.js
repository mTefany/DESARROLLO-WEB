var axios = require("axios").default;
const url = "http://localhost:5000/v1/api/tradicional";



async function getTradicionaln(req, res, next) {
    const tradicional = await axios.get(url); 
    res.render('tradicional',  { title: 'Tradicional', Tradicional: tradicional.data });
}

async function postTradicional(req, res, next) {
    const { orden, nombre, precio, descripcion } = req.body;
    await axios.post(url, { orden, nombre, precio, descripcion });
    res.redirect('tradicional');
}


module.exports = {
    getTradicionaln,
    postTradicional
}