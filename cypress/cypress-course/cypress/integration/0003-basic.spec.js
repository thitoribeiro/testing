/// <reference types="cypress" />

describe('Cypress basics', () => {
  it('Should visit a page and assert title', () => {
    cy.visit('https://www.wcaquino.me/cypress/componentes.html') 

    // const title = cy.title()
    // console.log(title)

    cy.title().should('be.eql', 'Campo de Treinamento')
    cy.title().should('contain', 'Campo de Treinamento')

    cy.title()
      .should('be.eql', 'Campo de Treinamento')
      .and('contain', 'Campo')
  })
})
