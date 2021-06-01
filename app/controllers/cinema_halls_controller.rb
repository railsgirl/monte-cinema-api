class CinemaHallsController < ApplicationController

  def index
    @cinema_halls = CinemaHall.all
    render json: @cinema_halls
  end

  def create
    @cinema_hall = CinemaHall.new(cinema_hall_params)
    if @cinema_hall.save
      render json: @cinema_hall, status: :created, location: @cinema_hall
    else
      render json: { error: 'Unable to create Cinema Hall' }, status: 400
    end
  end

  def update
    @cinema_hall = CinemaHall.find(params[:id])
    if @cinema_hall
      @cinema_hall.update(cinema_hall_params)
      render json: { message: "Cinema Hall successfully updated!" }, status: 200
    else
      render json: { error: "Unable to update Cinema Hall"}, status: 400
    end
  end

  def destroy
    @cinema_hall = CinemaHall.find(params[:id])
    if @cinema_hall
      @cinema_hall.destroy
      render json: { message: "Cinema Hall successfully deleted!" }, status: 200
    else
      render json: { error: "Unable to delete Cinema Hall"}, status: 400
    end
  end

  private

  def cinema_hall_params
    params.require(:cinema_hall).permit(:name, :seats)
  end

end
