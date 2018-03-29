class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @new_movie = Movie.create!(movie_params)
    redirect_to movies_url
  end

  def destroy
    Movie.find(params[:id]).destroy
    redirect_to movies_url
  end

  private
  def movie_params
    params.require(:movie).permit(:picture, :title, :genre, :year, :synopsis)
  end

end
