
Feature('First test');

Scenario('test something', (I) => {
  I.amOnPage('/login');
  I.see('GitHub');
  I.fillField('Username', '******'); //type your user
  I.fillField('Password', '******');  //type your pass
  I.click('Sign in');
});
