Feature('Login');

Scenario('User and pass login', (I) => {
    I.wait(3);
    I.fillField({android: 'Email address', ios: 'idIOS'}, 'thito.ribeiro@hotmail.com' );
    I.wait(3);
});
