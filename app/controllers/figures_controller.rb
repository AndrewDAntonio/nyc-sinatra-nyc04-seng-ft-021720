class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    @figures = Figure.all
    erb :"/figures/index"
  end

  get '/figures/new' do
    erb :"/figures/new"
  end

  post '/figures/' do
    @figure = Figure.create(params[:figure])
    redirect to("/figures/#{@figure.id}")
  end


  
end



#/new & /edit need to allow user to select from existing landmarks and titles
