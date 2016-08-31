class FeedsController < ApplicationController
  before_action :set_feed, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /feeds
  def index
    @feeds = Feed.all
  end

  # GET /feeds/1
  def show
  end

  # GET /feeds/new
  def new
    @feed = current_user.feeds.build
  end

  # GET /feeds/1/edit
  def edit
  end

  # POST /feeds
  def create
    @feed = current_user.feeds.build(feed_params)
      if @feed.save
          redirect_to feeds_path, notice: 'Feed was successfully created.'
      else
          render :new
      end
  end

  # PATCH/PUT /feeds/1
  def update
      if @feed.update(feed_params)
        redirect_to feeds_path, notice: 'Feed was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /feeds/1
  def destroy
    @feed.destroy
      redirect_to feeds_path, notice: 'Feed was successfully deleted.'
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed
      @feed = Feed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feed_params
      params.require(:feed).permit(:title, :context, :prompt, :bootsy_image_gallery_id)
    end
end