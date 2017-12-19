class NetworksController < ApplicationController
  def index
  	@networks = Network.all
  end

  def edit
  end

  def new
  end

  def show
  end
  
end
