FactoryGirl.define do
  factory :product, class: 'Product' do
    sequence(:name) {|n| "b3 Guitars Pheonix V Korina #{n}" } 
    category "Instruments"
    subcategory "Guitars"
    price 3000
    description_title "This is the first guitar Gene Baker built in 2017."
    description "Gene Baker, former Master Builder at the Gibson and Fender Custom Shops, has moved his b3 Guitars from California to the brand new, state of the art, Roscoe Guitars workshop in North Carolina."
  end
end
