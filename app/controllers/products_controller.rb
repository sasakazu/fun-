class ProductsController < ApplicationController

  def new
  end

  def index

    @blog = Blog.new
    @music = Music.new
    @picture = Picture.new
    @dance = Dance.new


  end







end
