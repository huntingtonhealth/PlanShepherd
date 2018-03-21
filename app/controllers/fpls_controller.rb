class FplsController < ApplicationController
  def index
    @fpls = Fpl.getFPL(params[:familySize])
    render json: {status: "SUCCESS", message: 'Loaded articles', data: @fpls}, status: :ok
  end
end
