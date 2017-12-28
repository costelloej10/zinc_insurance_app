class Product < ApplicationRecord
  validates_presence_of :name, :price, :description, :description_title, :category
  validates_uniqueness_of :name
  has_one :zinc_remote_info, dependent: :destroy
end
