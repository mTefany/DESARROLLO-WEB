var axios = require("axios").default;
const url = "http://localhost:5000/v1/api/cake";

async function getCake(req, res, next) {
    const cake = await axios.get(url); 
    res.render('cake',  { title: 'Cake', cake: cake.data });
};

async function postCake(req, res, next) {
    const { orden, nombre, precio, descripcion } = req.body;
    await axios.post(url, { orden, nombre, precio, descripcion });
    res.redirect('cake');
};


module.exports = {
    getCake,
    postCake
};