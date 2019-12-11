
Feature('Editor');

<<<<<<< HEAD
Scenario('Can be opened and the text input and bold formatting is working', (I) => {
    I.amOnPage('/');
    I.click('WYSIWYG Editor');
    I.switchTo('#mce_0_ifr');
    I.fillField('#tinymce', 'My text bold');
    I.doubleClick('#tinymce');
    I.switchTo();
    I.click('#mceu_3');
    I.switchTo('#mce_0_ifr');
    I.click('#tinymce');
    I.saveScreenshot('editor_test.png')   
});
=======
Scenario('test something', (I) => {
    I.amOnPage("/");
    I.click("WYSIWYG	Editor");
    I.switchTo("#mce_0_ifr");
    I.fillField("#tinymce", "My	text	bold");
    I.doubleClick("#tinymce");
    I.switchTo();
    I.click("#mceu_3");
    I.switchTo("#mce_0_ifr");
    I.click("#tinymce");
    I.saveScreenshot("editor_test.png");
 }
);
>>>>>>> 5cfe2521d16e87ab2a32f222535477608404abec
