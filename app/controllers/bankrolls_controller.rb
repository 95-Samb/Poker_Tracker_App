class BankrollsController < ApplicationController
  def index
    render :index
  end
  def new
    @bankroll = Bankroll.new
  end

end
