
const expect = require('chai').expect;
const {I} = inject();

Feature('GET tests');

Scenario('Verify a successful call', (I) => {
    const res = await I.sendGetRequest('/api/users?page=2');
    expect(res.status).to.eql(200);

});
