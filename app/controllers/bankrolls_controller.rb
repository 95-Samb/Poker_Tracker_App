class BankrollsController < ApplicationController
  def index
    render :index
  end
  def new
    @bankroll = Bankroll.new
  end
  def create
    bankroll = Bankroll.new
    bankroll.save

  end

end
