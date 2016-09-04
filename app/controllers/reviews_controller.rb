class ReviewsController < ApplicationController
  def show  
    @responses = Response.all
  end
end
