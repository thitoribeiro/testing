//const expect = require('chai').expect;
//const chai = require('chai')
//, expect = chai.expect
//, should = chai.should();
//const {I} = inject();

Feature('GET presentation');

Scenario('Verify a successful call', async () => {
	const res = await I.sendGetRequest('/api/v1/Presentation?PresentationName=ComSlide');
	//console.log(res);
	console.log(res.data.presentation);
	expect(res.data.presentation.name).to.equal('ComSlide');
	expect(res.status).to.eql(200);
	console.log("==> status code is 200!")
});
Scenario('Verifying the result', async () => {
	//const res = await I.sendGetRequest('/api/v1/Presentation?PresentationName=ComSlide');
	console.log(res.data);
	//expect(res.data.presentation.name).to.should.a('ComSlide');
	//expect(res.data.shouldShow).to.be.a('boolean');
	//expect(res.data.tagPrefix).to.be.a('string');
	//expect(res.data.height).to.eql("172");
	//expect(res.data.mass).to.eql("77");
	//expect(res.data.hair_color).to.eql("blond");
	//expect(res.data.skin_color).to.eql("fair");
	//expect(res.data.eye_color).to.eql("blue");
	//expect(res.data.birth_year).to.eql("19BBY");
	//expect(res.data.gender).to.eql("male");
	
}).timeout(1000);
