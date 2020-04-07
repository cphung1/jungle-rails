require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should create a new product when all field are present' do
      @category = Category.new(name: 'Testing')
      @product = Product.new(name: 'Dogs', price_cents: 3500, quantity: 3, category: @category)
      @product.valid?
      expect(@product.errors).not_to include("can\'t be blank")
    end
    it 'should not create a new product when name is empty' do
      @category = Category.new(name: 'Testing')
      @product = Product.new(name: '', price_cents: 3500, quantity: 3, category: @category)
      @product.valid?
      expect(@product.errors[:name]).to include("can\'t be blank")
    end
    it 'should not create a new product when price is empty' do
      @category = Category.new(name: 'Testing')
      @product = Product.new(name: 'Dogs', price: nil, quantity: 3, category: @category)
      @product.valid?
      expect(@product.errors[:price]).to include("can\'t be blank")
    end
    it 'should not create a new product when quantity is empty' do
      @category = Category.new(name: 'Testing')
      @product = Product.new(name: 'Dogs', price: 4500, quantity: nil, category: @category)
      @product.valid?
      expect(@product.errors[:quantity]).to include("can\'t be blank")
    end
    it 'should not create a product if the category is missing' do
      @category = Category.new(name: "Testing")
      @product = Product.new(name: 'Dogs', price: 4500, quantity: 3)
      @product.valid?
      expect(@product.errors[:category]).to include("can\'t be blank")
    end
  end
end
