class FiguresController < ApplicationController

  get '/figures' do
    # binding.pry
    @figures = Figure.all
    erb :'./figures/index'
  end

  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    # binding.pry
    erb :'/figures/new'
  end

  post '/figures/new' do
    # binding.pry
    @figure = Figure.create(params["figure"])
    if !params["landmark"]["name"].empty?
      @figure.landmarks << Landmark.create(params["landmark"])
    end
    if !params["title"]["name"].empty?
      @figure.titles << Title.create(params["title"])
    end

    binding.pry
  end

  get '/figures/:id' do

  end


end
