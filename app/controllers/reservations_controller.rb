# frozen_string_literal: true

class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all

    render json: @reservations
  end

  def show
    render json: @reservation
  end

  def create_offline
    @ticket_desk = TicketDesk.find(params[:ticket_desk_id])
    @reservation = @ticket_desk.reservations.create(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def create_online
    @ticket_desk = TicketDesk.find(params[:ticket_desk_id])
    @reservation = @ticket_desk.reservations.create(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation.destroy
  end

  private

  def reservation_params
    params.require(:reservation).permit(:status, :seance_id, :client_id, tickets: %i[price tariff])
  end
end
