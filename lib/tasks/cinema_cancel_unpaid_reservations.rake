desc 'Cancel unpaid reservations before 30 minutes to movie'
task cinema_cancel_unpaid_reservations: :environment do
  CancelUnpaidReservations.new.call
end
