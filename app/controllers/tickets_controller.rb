# frozen_string_literal: true

class TicketsController < ApplicationController
  def index
    @reservation = Reservation.find(params[:reservation_id])
    render json: @reservation.tickets
  end

  def create
    @reservation = Reservation.find(params[:reservation_id])
    @ticket = @reservation.tickets.create(ticket_params)

    if @ticket.save
      render json: @ticket, status: :created
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:price, :tariff)
  end
end
