class SpicesController < ApplicationController

def index 
  spices = Spice.all 
  render json: spices
end 

def create 
  spice = Spice.create(spice_params)
  render json: spice, status: :created 
end 

def update 
  x = find_id
  x.update(spice_params)
  render json: x
end 

  def destroy 
    find_id.destroy 
    head :no_content
  end 
  
def find_id 
  spice = Spice.find_by(id: params[:id])
end 

private 

def spice_params
  params.permit(:title, :image, :description, :notes, :rating)
end 



end 
