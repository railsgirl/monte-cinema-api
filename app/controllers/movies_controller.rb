# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    render json: @movies
  end

  def show
    render json: @movie
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    if @movie
      @movie.update(movie_params)
      render json: { message: 'Movie successfully updated!' }, status: 200
    else
      render json: { error: 'Unable to update Movie' }, status: 400
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    if @movie
      @movie.destroy
      render json: { message: 'Movie successfully deleted!' }, status: 200
    else
      render json: { error: 'Unable to delete Movie' }, status: 400
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :duration, :genre)
  end
end
