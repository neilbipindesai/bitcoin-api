class V2::BitcoinsController < ApplicationController
  def index
    @bitcoins = Bitcoin.all
  end

  def create
    @bitcoin = Bitcoin.new(
                           address: params[:address],
                           testnet_address: params[:testnet_address]
                           )
    @bitcoin.save
    render :show
  end


  def show
    @bitcoin = Bitcoin.find(params[:id])
  end

  def update
    @bitcoin = Bitcoin.find(params[:id])
    @bitcoin 
  end

  def destroy
    @bitcoin = Bitcoin.find(params[:id])
    @bitcoin.destroy
    render json: {message: "bitcoin destroyed"}, code: 200
  end

end