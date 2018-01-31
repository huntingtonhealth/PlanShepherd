class PlansController < ApplicationController
  def index
  		@plans = Plan.screen(params[:zip],params[:county], params[:state], params[:dental], params[:age], params[:ratingarea])
  end
  
  def quickscreen
		  @plans = Plan.screen(params[:zip],params[:county], params[:state], params[:dental], params[:age], params[:ratingarea])
      render json: {status: "SUCCESS", message: 'Loaded articles', data: @plans}, status: :ok
  end

  def edit
  end

  def new
  end

  def show
  end
end
