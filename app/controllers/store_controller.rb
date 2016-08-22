class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  
  def index
    @items  = Item.order(:title)
  end
end
