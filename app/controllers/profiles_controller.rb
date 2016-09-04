class ProfilesController < ApplicationController
    
  def show  
    @responses = User.find_by(name: params[:name]).responses.order('created_at DESC')
  end
end
