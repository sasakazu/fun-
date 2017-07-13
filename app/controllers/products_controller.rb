class ProductsController < ApplicationController

  def new
  end

  def index
  end



def pay
    Payjp.api_key = 'sk_test_b0d74878cbcee203531f072b'
    charge = Payjp::Charge.create(
    :amount => 3500,
    :card => params['payjp-token'],
    :currency => 'jpy',
)
end





end
