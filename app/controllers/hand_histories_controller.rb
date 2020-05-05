class HandHistoriesController < ApplicationController
  def index
    @hand_history = HandHistory.all
  end
  def new
    @hand_history = HandHistory.new
  end
  def create
    @hand_history = HandHistory.new#(hand_history_params)
    @hand_history.data = params[:file].read
    @hand_history.save
    redirect_to @hand_history
  end
  def show
    @hand_history = HandHistory.find(params[:id])
  end

  private

  def hand_history_params
    params.require(:hand_history)
  end
end
