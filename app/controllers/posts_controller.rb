class PostsController < ApplicationController

  def index
    @posts = Post.all
    # find all Company rows
    # render companies/index view
  end

   def show
      @place = Place.find_by({"id" => params["id"] })
      @posts = Post.where({"id" => params["id"] })

  #  render companies/show view with details about Company
  end

  def new
    @post = Post.new
  end
  
   def create
  @post= Post.new
  @post["title"] = params["post"]["title"]
  @post["description"] = params["post"]["description"]
  @post["date"] = params["post"]["date"]
  @post.save
  redirect_to "/places"
  end


end
