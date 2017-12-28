class CreateFirstProduct < ActiveRecord::Migration[5.0]
  def up
    guitar = Product.create!(
                          name: "b3 Guitars Pheonix V Korina",
                          category: "Instruments",
                          subcategory: "Guitars",
                          description_title: "This is the first guitar Gene Baker built in 2017...and that's not the only reason this Pheonix V is truly special!",
                          description: "Gene Baker, former Master Builder at the Gibson and Fender Custom Shops, has moved his b3 Guitars from California to the brand new, state of the art, Roscoe Guitars workshop in North Carolina. Once again, he is making his SL, Pheonix, and Ring Master models by hand, with top quality materials, and true to his designs. This Pheonix V is the absolute best example of the model we've ever played.",
                          price: 3000
                        )
    zinc_remote_info = ZincRemoteInfo.create!(product: guitar, category: "Musical", subcategory: "Guitar" )
  end
 
  def down
    Product.destroy_all
  end
end
