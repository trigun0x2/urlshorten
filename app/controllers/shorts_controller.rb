class ShortsController < ApplicationController
  def new
    @link=Short.new
  end

  def create
    @link=Short.new(params[:short])
    @link.visits = 0
    @link.shorturl = (0...4).map{(65+rand(26)).chr}.join.downcase!
    if @link.save
      flash[:success] = "Link Shortened!"
      redirect_to @link
    else
      flash[:warn] = "Failed"
      render 'new'
    end
  end

  def index

  end

  def show
    @link=Short.find_by_id(params[:id])  
  end

  def xurl
    if params[:shorturl]
      @short = Short.find_by_shorturl(params[:shorturl])
      @short.visits += 1
      @short.save
      redirect_to "http://#{@short.url}"
    else
      redirect_to root_path
    end
  end
end
