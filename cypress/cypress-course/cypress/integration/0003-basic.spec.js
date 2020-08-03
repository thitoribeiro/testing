/// <reference types="cypress" />

describe('Cypress basics', () => {
  it('Should visit a page and assert title', () => {
    cy.visit('https://www.wcaquino.me/cypress/componentes.html') 
  })
})
