class PagesController < ApplicationController

  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = Micropost.all.paginate(:page => params[:page])
      @feed_type = :live
    end
  end
  
  def subscribed
    @micropost = Micropost.new
    @feed_items = current_user.feed.paginate(:page => params[:page])
    @feed_type = :subscribed
  end

  def contact
    @title = "Contact"
  end
  
  def about
    @title = "About"
  end
  
end
