# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. Stripe is used for payments.

## Final Product 
**Main Page**
!["Screenshot of main page"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/main.png)

**Empty Cart**
!["Screenshot of empty cart"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/empty_cart.png)

**Cart**
!["Screenshot of cart"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/cart_checkout.png)

**Cart Checkout**
!["Screenshot of cart checkout"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/checkout_card_info.png)

**Order Confrimation**
!["Screenshot of order confrimation"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/order_confirmed.png)

**Signup**
!["Screenshot of signup"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/signup.png)

**Admin Authentication**
!["Screenshot of admin authentication"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/admin_authentication.png)

**Admin Dashboard**
!["Screenshot of dahsboard"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/admin_dashboard.png)

**Admin Categories List**
!["Screenshot of admin categories"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/admin_categories.png)

**Admin Create New Category**
!["Screenshot of create new category"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/admin_new_categories.png)

**Admin Products List**
!["Screenshot of product list"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/admin_products.png)

**Admin Create New Product**
!["Screenshot of create new product"](https://github.com/cphung1/jungle-rails/blob/master/public/screenshots/new_product.png)


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
