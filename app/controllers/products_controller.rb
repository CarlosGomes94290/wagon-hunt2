class ProductsController < ApplicationController

    PRODUCTS = [
      {name: "Kudoz", category: "Pro"},
      {name: "uSlide", category: "Education"},
      {name: "Hubum", category: "Lifestyle"},
      {name: "Roadstr", category: "Lifestyle"}
    ]
  def index
    if params[:filter]
    @products = PRODUCTS.select {|products| products[:category] == params[:filter]}
    else
      @products = PRODUCTS
    end
  end
  def show
    @product = PRODUCTS[params[:id].to_i]

  end


end
