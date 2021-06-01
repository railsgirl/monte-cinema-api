require 'rails_helper'

RSpec.describe "CinemaHalls", type: :request do
  describe "GET /cinema_halls" do
    let!(:cinema_hall) { CinemaHall.create(name: "Some name", seats: 500) }

    it "works and returns status 200" do
      get("/cinema_halls")
      expect(response.status).to eq(200)
    end
  end

  describe "POST /cinema_halls" do
    it "works and returns status 201" do
      post("/cinema_halls", params: { cinema_hall: {  name: "new name", seats: 100 } } )
      expect(response.status).to eq(201)
    end
  end

  describe "PUT /cinema_halls/:id" do
    let!(:cinema_hall) { CinemaHall.create(name: "Some name", seats: 500) }

    it "works and returns status 200" do
      put("/cinema_halls/#{cinema_hall.id}", params: { cinema_hall: { id: cinema_hall.id, name: "new name" } })
      expect(response.status).to eq(200)
    end
  end

  describe "DELETE /cinema_halls/:id" do
    let!(:cinema_hall) { CinemaHall.create(name: "Some name", seats: 500) }

    it "works and returns status 200" do
      delete("/cinema_halls/#{cinema_hall.id}")
      expect(response.status).to eq(200)
    end
  end
end
