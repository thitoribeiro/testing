// Test Suite - Mathematical Operations

// Test Cases

// 1. Addition
// 2. Subtraction
// 3. Multiplication
// 4. Division

var assert = require('assert');

decribe('Mathematical Operations - Test Suite', function(){
    
    it('Addition of two variables', function(){

        var a = 10;
        var b = 10;

        var c = a+b;

        assert.equal(c,20);

    });

    it('Subtration of two variables', function(){

        var a = 10;
        var b = 10;

        var c = a-b;

        assert.equal(c,0);

    });

    it('Multiplication of two variables', function(){

        var a = 10;
        var b = 10;

        var c = a*b;

        assert.equal(c,100);

    });

    it('Division of two variables', function(){

        var a = 10;
        var b = 10;

        var c = a/b;

        assert.equal(c,1);

    });

});