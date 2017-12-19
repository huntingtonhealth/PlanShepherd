class PlansController < ApplicationController
  def index
  		@plans = Plan.screen(params[:ZIP],params[:county], params[:state], params[:Dental], params[:age], params[:ratingarea])
      
  end

  def edit
  end

  def new
  end

  def show
  end
end
