Before((test) => {
  const chai = require('chai')
  , expect = chai.expect
  , should = chai.should();
  const {I} = inject();
  const res = await I.sendGetRequest('/api/v1/Presentation?PresentationName=ComSlide');

});

const { I, endPointAccess } = inject();

module.exports = {}
