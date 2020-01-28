const { I } = inject();
// Add in your custom step files

Given('that I am at google site', () => {
  I.amOnPage('/');
});

When('I search the Easynvest website', () => {
  I.fillField('.gLFyf','Easynvest');
});

When('I press enter', () => {
  I.pressKey('Enter');
});

When('I click on Easynvest link', () => {
  I.click('www.easynvest.com.br/');
});

Then('I see the home page from website', () => {
  I.waitForElement('.header__desktop svg');
});
