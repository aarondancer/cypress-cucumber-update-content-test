import { Then } from "cypress-cucumber-preprocessor/steps";

Then("I see {string} in the {string}", (value, field) => {
  cy.get(field).contains(value);
});