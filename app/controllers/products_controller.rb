class ProductsController < InheritedResources::Base
  def index
    @products = Product.order("created_at DESC")
  end
end
