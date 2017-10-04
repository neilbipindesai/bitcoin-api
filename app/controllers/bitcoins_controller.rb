class BitcoinsController < ApplicationController
  def index
    @bitcoins = Bitcoin.all
  end
end