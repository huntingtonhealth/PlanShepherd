class PlansController < ApplicationController
  def index
    if params[:workflow] == "test"
      @plans = Plan.search(params[:planid])
      @tobacco = "No"
    else
  		@plans = Plan.screen(params[:zip],params[:county], params[:state], params[:dental], params[:age], params[:ratingarea])
      @tobacco = params[:tobacco] 
    end
  end

  def edit
  end

  def new
  end

  def show
  end
end
