class HandHistoriesController < ApplicationController
  def index
    @hand_history = HandHistory.all
  end
  def new
    @hand_history = HandHistory.new
  end
  def create
    @hand_history = HandHistory.new(hand_history_params)
    redirect_to "http://localhost:3000/hand_histories/show"
  end
  def show
    #@hand_history = HandHistory.find(params[:id])
  end

  private

  def hand_history_params
      params.fetch(:hand_history, {}).permit(:file)
  end
end
