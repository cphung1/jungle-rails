# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Final Product 
**Main Page**
!["Screenshot of main page"](https://github.com/cphung1/scheduler/blob/master/public/images/main_page.png)

**Create a new appointment**
!["Screenshot of form to create an appointment"](https://github.com/cphung1/scheduler/blob/master/public/images/create_appt.png)

**Delete Confirmation**
!["Screenshot of confirmation for deleting appointment"](https://github.com/cphung1/scheduler/blob/master/public/images/delete_appt.png)

**Transition States**
!["Screenshot of loading status for async requests"](https://github.com/cphung1/scheduler/blob/master/public/images/transition_saving.png)

**Error Handling**
!["Screenshot of error handling"](https://github.com/cphung1/scheduler/blob/master/public/images/error_msg.png)

**Storybook Component Tests**
!["Screenshot of Storybook Component Tests"](https://github.com/cphung1/scheduler/blob/master/public/images/storybook.png)

**Jest Unit Tests**
!["Screenshot of Jest Unit Tests"](https://github.com/cphung1/scheduler/blob/master/public/images/jest.png)

**Cypress E2E Tests**
!["Screenshot of Cypress E2E Tests"](https://github.com/cphung1/scheduler/blob/master/public/images/cypress.png)

## Getting Started

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
