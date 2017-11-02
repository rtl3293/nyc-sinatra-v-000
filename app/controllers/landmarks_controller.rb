class LandmarksController < ApplicationController

  get '/landmarks' do
    # binding.pry
    @landmarks = Landmark.all
    erb :'./landmarks/index'
  end

  get '/landmarks/new' do
    # binding.pry
    erb :'/landmarks/new'
  end

  post '/landmarks/new' do
    @landmark = Landmark.create(params["landmark"])
    redirect to "/landmarks/#{@landmark.id}"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    # binding.pry
    erb :'/landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    # binding.pry
    erb :'/landmarks/edit'
  end

  post '/landmarks/:id/edit' do
    # binding.pry
    @landmark = Landmark.find(params[:id])
    @landmark.update(params["landmark"])
    @landmark.save
    # binding.pry
    # if !params["landmark"]["name"].empty?
    #   @figure.landmarks << Landmark.create(params["landmark"])
    # end
    # if !params["title"]["name"].empty?
    #   @figure.titles << Title.create(params["title"])
    # end
    # @figure.save
    redirect to "/landmarks/#{@landmark.id}"
  end
end
