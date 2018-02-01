class HomeController < ApplicationController

	def index
    @zips = Zipmapping.none
    @state = Zipmapping.first
    @familyComp = 'self'
  end
  
  def update_zips
    @zips = Zipmapping.where('"fullzip" = ?', params[:zip])
    @state = @zips.order('res_ratio DESC').first
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def update_zip
    @zips = Zipmapping.where('"fullzip" = ?', params[:zip]).order('res_ratio DESC')
    render json: {status: "SUCCESS", message: 'Loaded articles', data: @zips}, status: :ok
  end
  
  def update_state
    @state = Zipmapping.where('fullzip = ? AND county = ?', params[:zip], params[:county]).first
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def familyComp
    if params[:familyComp] == 'self'
      @familyComp = 'self'
    elsif params[:familyComp] == 'family'
      @familyComp = 'family'
    else
      @familyComp = 'kids'
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def addspouse
    respond_to do |format|               
        format.js
    end        
  end 
  
  def adddependent
    respond_to do |format|               
        format.js
    end        
  end
  
end
