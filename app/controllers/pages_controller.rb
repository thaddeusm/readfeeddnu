class PagesController < ApplicationController
  def home
    @latest_feed = Feed.order(:id).last
  end
end
