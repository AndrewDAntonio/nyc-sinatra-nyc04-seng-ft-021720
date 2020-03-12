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

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :"figures/show"
  end

  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    erb :"figures/edit"
   
  end

  patch '/figures/:id' do
    @figure = Figure.find(params[:id])
    @figure.name = params[:name]
    @figure.save
    redirect to("/figures/#{@figure.id}")
  end

  delete '/figures/:id' do
    @figure = Figure.find(params[:id])
    @figure.delete
    redirect to("/figures/index")
  end
  
end


