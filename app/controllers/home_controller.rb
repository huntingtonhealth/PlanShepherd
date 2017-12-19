class HomeController < ApplicationController

	def index
    @zips = Zipmapping.none
    @state = Zipmapping.first
    @familyComp = 'self'
  end
  
  def update_zips
    @zips = Zipmapping.where("zipmappings.FULLZIP = ?", params[:ZIP])
    @state = @zips.order('RES_RATIO DESC').first
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def update_state
    @state = Zipmapping.where("zipmappings.FULLZIP = ? AND zipmappings.COUNTY = ?", params[:ZIP], params[:county]).first
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
  
end
