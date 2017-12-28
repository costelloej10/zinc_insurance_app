FactoryGirl.define do
  factory :zinc_remote_info, class: 'ZincRemoteInfo' do
    product { FactoryGirl.build(:product) }
    category { "Musical" }
    subcategory { "Guitar" }
  end
end
