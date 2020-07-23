Feature('Login');

Scenario('User and pass login', (I) => {
    I.wait(3);
    I.fillField({android: 'Email address', ios: 'idIOS'}, 'qaninja@gmail.com' );
    I.fillField({android: 'Passord', ios: 'asdf'}, '1234567');
    I.runOnAndroid(() =>{
        I.tap('CONTINUE');
    });
});
