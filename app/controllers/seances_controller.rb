# frozen_string_literal: true

class SeancesController < ApplicationController
  def index
    @seances = Seance.all

    render json: @seances
  end

  def show
    render json: @seance
  end

  def create
    @seance = Seance.new(seance_params)

    if @seance.save
      render json: @seance, status: :created
    else
      render json: @seance.errors, status: :unprocessable_entity
    end
  end

  def update
    if @seance.update(seance_params)
      render json: @seance
    else
      render json: @seance.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @seance.destroy
  end

  private

  def seance_params
    params.require(:seance).permit(:start_time, :movie_id, :cinema_hall_id)
  end
end
