class FiguresController < ApplicationController

  get '/figures' do
    # binding.pry
    erb :'./figures/index'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures/new' do

  end

  get '/figures/:id' do

  end
end
