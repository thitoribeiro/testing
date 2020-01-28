Feature('test1 codeceptjs');

Scenario('Searching Easynvest on Google', (I) => {
    I.amOnPage('/');
    I.fillField('.gLFyf','Easynvest');
    I.pressKey('Enter');
    I.click('www.easynvest.com.br/');
    I.waitForElement('.header__desktop svg');
});
