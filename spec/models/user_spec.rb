require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do 
    subject { described_class.new(
      first_name: "Jane",
      last_name: "Doe",
      email: "jane@mail.com",
      password: "test",
      password_confirmation: 'test'
    ) }

    it "should create a new user when all input is given and pw & confirmation pw matches" do
      expect(subject).to be_valid
    end
    it "should not create a new user when pw & confirmation pw don't match" do
      subject.password_confirmation = 'test1'
      expect(subject).to_not be_valid
    end
    it "should not create a new user when pw is missing" do 
      subject.password = nil
      expect(subject).to_not be_valid
    end
    it "should not create a new user when pw confirmation is missing" do 
      subject.password_confirmation = nil
      expect(subject).to_not be_valid
    end
    it "should not create a new user when email is not unique" do
      described_class.create!(
        first_name: "Jane",
        last_name: "Doe",
        email: "jane@mail.com",
        password: "test",
        password_confirmation: 'test'
      ) 
      expect(subject).to_not be_valid
    end
    it "should not create a new user when email is missing" do 
      subject.email = nil
      expect(subject).to_not be_valid
    end
    it "should not create a new user when first name is missing" do 
      subject.first_name = nil
      expect(subject).to_not be_valid
    end
    it "should not create a new user when last name is missing" do 
      subject.last_name = nil
      expect(subject).to_not be_valid
    end
    it "should not create a new user when pw is too short" do 
      subject.password = 'tes'
      subject.password_confirmation = 'tes'
      expect(subject).to_not be_valid
    end
  end
  describe '.authenticate_with_credentials' do
    before {
      described_class.create!(
        first_name: 'Jane',
        last_name: 'Doe',
        email: 'jane@mail.com',
        password: 'test',
        password_confirmation: 'test'
      )}
      it "should log in the user given correct credentials" do
        user = described_class.authenticate_with_credentials("jane@mail.com","test")
        expect(user).to be_instance_of(described_class)
      end
      it "shouldn't log in the user given wrong email" do
        user = described_class.authenticate_with_credentials("doe@mail.com","test")
        expect(user).to be_nil
      end
      it "shouldn't log in the user given wrong password" do
        user = described_class.authenticate_with_credentials("jane@mail.com","testing")
        expect(user).to be_nil
      end
      it "should log in the user given spaces before and after email" do
        user = described_class.authenticate_with_credentials("  jane@mail.com   ","test")
        expect(user).to be_instance_of(described_class)
      end
      it "should log in the user given in email casing is wrong" do
        user = described_class.authenticate_with_credentials("jAne@mail.com","test")
        expect(user).to be_instance_of(described_class)
      end

  end
end
