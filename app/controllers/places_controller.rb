class PlacesController < ApplicationController

def index
  @places = Place.all
  # find all Place rows
  # render companies/index view
end

 def show
    @place = Place.find_by({"name" => params["name"] })
    @posts = Post.where({"place_name" => params["name"]})
# render companies/show view with details about Company
end

def new
  @place = Place.new
end

def create
  @place= Place.new
  @place["name"]=params["place"]["name"]
  @place.save
redirect_to "/places"
end

end