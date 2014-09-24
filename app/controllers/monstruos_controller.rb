class MonstruosController < ApplicationController
  before_action :get, only: [:show, :destroy]
  before_action :comp, only: [:show]
  def index 
  end
  def get
      @monstruo=Monstruo.find(params[:id])
  end
  def comp
	if @monstruo.tweets.count < 2
		flash[:notice]= "No tiene tweets"
		redirect_to(monstruos_path)
        end   
  end
  def show
	
  end

  def edit
    
  end
  
  def destroy
	@monstruo.destroy
        redirect_to(monstruos_path)
  end
end
