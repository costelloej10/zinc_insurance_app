require 'rails_helper'

RSpec.describe ZincRemoteInfo, type: :model do
  context "attributes" do
    let(:zinc_remote_info) { build(:zinc_remote_info) }

    it "should be valid" do 
      zinc_remote_info.should be_valid
      zinc_remote_info.product.should_not be_nil
      zinc_remote_info.category.should_not be_nil
      zinc_remote_info.subcategory.should_not be_nil
    end

    it "should not be valid without product" do 
      zinc_remote_info.product = nil
      zinc_remote_info.should_not be_valid
      zinc_remote_info.errors.messages.has_key?(:product).should be true
    end
  end
end
