const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.json({
        message: 'Express Frontend Running Successfully!',
        port: 3000,
        status: 'success'
    });
});

app.get('/health', (req, res) => {
    res.json({
        status: 'healthy'
    });
});

app.get('/products', (req, res) => {

    const products = [
        {
            id: 1,
            name: 'Laptop',
            price: 50000
        },
        {
            id: 2,
            name: 'Mobile',
            price: 20000
        },
        {
            id: 3,
            name: 'Headphones',
            price: 3000
        }
    ];

    res.json(products);
});

app.listen(3000, '0.0.0.0', () => {
    console.log('Express Server Running on Port 3000');
});