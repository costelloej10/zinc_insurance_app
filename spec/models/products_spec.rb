require 'rails_helper'

RSpec.describe Product, type: :model do
  context "attributes" do
    let(:product) { build(:product) }
    it "should be valid" do 
      product.should be_valid
      product.name.should_not be_nil
      product.price.should_not be_nil
      product.description.should_not be_nil
      product.description_title.should_not be_nil
      product.category.should_not be_nil
    end

    it "should not be valid without name" do
      product.name = nil
      product.should_not be_valid
      product.errors.messages[:name].should eq ["can't be blank"]
    end

    it "should not be valid without unique name" do
      product2 = build(:product)
      product2.name = product.name
      product.save
      product2.should_not be_valid
      product2.errors.messages[:name].should eq ["has already been taken"]
    end

    it "should not be valid without price" do
      product.price = nil
      product.should_not be_valid
      product.errors.messages[:price].should eq ["can't be blank"]
    end
  end
end
