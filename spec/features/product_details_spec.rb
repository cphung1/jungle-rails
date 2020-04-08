require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "select product and see product details" do
        # ACT
        visit root_path
        first('.product').first('a').click()

        # DEBUG / VERIFY
        # save_and_open_page
        expect(page).to have_content("Description")
        expect(page).to have_content('Quantity')
  end

end