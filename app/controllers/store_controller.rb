class StoreController < ApplicationController
  skip_before_filter :authorize	
  def index
  	@products = Product.all
  	@counter = session[:counter]
    @counter.nil? ? @counter = 1 : @counter+=1
    session[:counter] = @counter
  	@current_time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  	@cart = current_cart
  end
end
