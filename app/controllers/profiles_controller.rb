class ProfilesController < ApplicationController
    
  def show  
    @writings = User.find_by(name: params[:name]).writings.order('created_at DESC')
  end
end
