
Feature('Editor');

Scenario('Can be opened and the text input and bold formatting is working',
(I) => {
    I.amOnPage('/');
    I.click('WYSIWYG Editor');
    I.switchTo('#mce_0_ifr');
    I.fillField('#tinymce', 'My text bold');
    I.doubleClick('#tinymce');
    I.switchTo();
    I.click('#mceu_3');
    I.switchTo("#mce_0_ifr");
	I.click("#tinymce");
	I.saveScreenshot("editor_test.png");
});
