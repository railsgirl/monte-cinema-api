class CancelUnpaidReservations
  def call
    unpaid_reservations.update_all(status: "cancelled")
  end

  private

  def unpaid_reservations
    Reservation
      .joins(:seance)
      .where(status: "booked")
      .where("seances.start_time < '#{(Time.current + 30.minutes).to_s(:db)}'")
  end
end
