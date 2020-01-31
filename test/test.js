//middleware
var expect = require('chai').expect;
var request = require('request');

//checking datatype

it('returns main page status ok', (done) => {
    request('http://localhost:3002', (error, response, body) =>{
    expect(response.statusCode).to.equal(200);
    done();
    });
});

it('returns array from products api', (done) => {
    request('http://localhost:3002/api/products', (error, response, body) =>{
        //becomes object
        let data = JSON.parse(body)
        expect(Array.isArray(data)).to.equal(true);
        done();
    });
})

it ('returns array from contacts api', (done) => {
    request('http://localhost:3002/api/contacts', (error, response, body) =>{
        let data = JSON.parse(body)
        expect(Array.isArray(data)).to.equal(true);
        done()
    });
})

it ('returns product filter', (done) => {
    request('http://localhost:3002/api/productfilter/:category', (error, response, body) =>{
        let data = JSON.parse(body)
        expect(Array.isArray(data)).to.equal(true);
        done()
    });
})
