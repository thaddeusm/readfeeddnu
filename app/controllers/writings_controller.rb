class WritingsController < ApplicationController
  before_action :set_feed

  def create  
    @writing = @feed.writings.build(writing_params)
    @writing.user_id = current_user.id

    if @writing.save
      redirect_to :back, notice: "Your writing has been saved."
    else
      render feed_path, notice: "Unfortunately, your writing could not be saved."
    end
  end
  
  def destroy  
    @writing = @feed.writings.find(params[:id])

    @writing.destroy
    redirect_to :back, notice: "Writing deleted."
  end

  private

  def writing_params  
    params.require(:writing).permit(:content)
  end

  def set_feed  
    @feed = Feed.find(params[:feed_id])
  end  
end