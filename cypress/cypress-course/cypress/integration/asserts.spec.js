/// <reference types="cypress" />

it('Equality', () => {
  const a = 1;

  expect(a).equal(1);
  expect(a, 'Should be 1').equal(1);
  expect(a).to.be.equal(1);
  expect('a').not.to.be.equal('b');
})

it('Truthy', () => {
  const a = true;
  const b = null;
  let c;

  expect(a).to.be.true;
  expect(true).to.be.true;
  expect(b).to.be.null;
  expect(a).to.be.not.null;
  expect(c).to.be.undefined;
})

it('Object equality', () => {
  const obj = {
    a: 1,
    b: 2
  }

  expect(obj).eql(obj);
  expect(obj).to.be.eql({ a: 1, b: 2 });
  expect(obj).to.be.deep.eql({ a: 1, b: 2 });
  expect(obj).include({ a: 1 });
  expect(obj).to.have.property('b');
  expect(obj).to.have.property('b', 2);
  expect(obj).to.not.be.empty;
  expect({}).to.be.empty;
  
})