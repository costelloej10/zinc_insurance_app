class ZincRemoteInfo < ApplicationRecord
  validates_presence_of :category, :product, :subcategory, :category
  belongs_to :product

  def quick_qoute_sku_hash
    {
      "sku"=> {
        "category"=> category,
        "subcategory"=> subcategory,
        "price"=> product.price
      },
      "zip_code"=> "10014", #hardcoded for now..
      "country_code"=> "US"
    }
  end
end