require 'rails_helper'

describe "ZincClientSpec" do
  before do
     WebMock.allow_net_connect! 
  end

  it 'should successfully fetch a quick quote' do
    product = create(:product)
    zinc_remote_info = create(:zinc_remote_info, product: product)
    resp = ZincClient.new.get_quick_quotes(product)
    VCR.use_cassette 'zinc_client/quick_qoute_api_response' do
      response = ZincClient.new.get_quick_quotes(product)
      response["quick_quotes"].first["price"].should eq "95.00"
      response["quick_quotes"].first["quote_type"].should eq "Insurance"
      response["quick_quotes"].first["deductible"].should eq "50.00"
    end
  end
end