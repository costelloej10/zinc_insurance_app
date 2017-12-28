class ProductsController < ApplicationController
  def index
    @product = Product.first
    if @product.zinc_remote_info
      @zinc_policy = ZincClient.new.get_quick_quotes(@product)
    end
  end
end
