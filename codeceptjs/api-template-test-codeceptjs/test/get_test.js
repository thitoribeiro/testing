const expect = require('chai').expect
const {I} = inject();

Feature('GET');

Scenario('Verify a successful call', async () => {
    const res = await I.sendGetRequest('/api/users?page=2');
    expect(res.status).to.eql(200);
});

Scenario('Verify a successful call', async () => {
    const res = await I.sendGetRequest('/api/users?page=266');
    expect(res.status).to.eql(200);
});
