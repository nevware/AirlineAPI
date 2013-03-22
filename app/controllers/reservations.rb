AirlineApi.controllers :reservations do
  # get :index, :map => "/foo/bar" do
  #   session[:foo] = "bar"
  #   render 'index'
  # end

  # get :sample, :map => "/sample/url", :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get "/example" do
  #   "Hello world!"
  # end

  get :show, :with => :id  do
    if params[:id] == ("AAAAA")
      @reservation = Reservation.new
      @reservation.reservationID = params[:id]

      @passenger = Passenger.new
      @passenger.firstName = "Ford"
      @passenger.lastName = "Prefect"

      @membership = Membership.new
      @membership.membershipNumber = '111111111'
      @membership.membershipProgram = 'Flying Blue'
      @membership.membershipTierLevel = 'Ivory'

      @passenger.memberships << @membership

      @reservation.passengers << @passenger

      @reservation.ticketNumber = '123456788888'

      @flight = Flight.new

      @flight.flightNumber = '1234'
      @flight.origin = 'AMS'
      @flight.destination = 'LON'
      @flight.marketingAirlineCode = 'KL'

      @connection = Connection.new

      @connection.flight = @flight

      @connection.sequenceNumber = 1
      @connection.date = Date.new(2013, 1,15)
      @connection.origin = 'AMS'
      @connection.destination = 'LON'

      @reservation.connections << @connection

      @reservation.to_json(:include => {:connections => {:include => :flight}, :passengers => {:include => :memberships}})


    else
      error 404, "Reservation doesn't exist; try AAAAA"
    end

  end

end
