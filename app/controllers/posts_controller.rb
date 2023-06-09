class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => params["id"]})
end

  def new
    @post = Post.new
    @post["place_id"]= params["place_id"] #fill in the form with this code
    #@place = Place.find_by({"id" => params["place_id"]})

  end
  
   def create
    @post= Post.new
    @post["title"] = params["post"]["title"]
    @post["description"] = params["post"]["description"]
    @post["posted_on"] = params["post"]["posted_on"]
    @post["place_id"] = params["post"]["place_id"]
    @post.save
    redirect_to "/places/#{@post.place_id}"
  end

def destroy
    @post = Post.find_by({ "id" => params["id"] })
    @post.destroy
    redirect_to "/posts"
end

end
