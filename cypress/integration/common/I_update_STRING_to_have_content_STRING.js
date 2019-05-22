import { When } from 'cypress-cucumber-preprocessor/steps';

When("I update {string} to have content {string}", (field, value) => {
  cy.document().then(doc => {
    const el = doc.querySelector(field);

    if (el) {
      el.textContent = value;
    } else {
      throw Error(`Unable to find ${field} in the DOM`);
    }
  });
});