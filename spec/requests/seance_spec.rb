require 'rails_helper'

RSpec.describe "Seances", type: :request do

  describe "GET /seances" do
    let!(:seance) { Seance.create(date: "2021-06-01", time: Time.now) }

    it "works and returns status 200" do
      get("/seances")
      expect(response.status).to eq(200)
    end
  end

  describe "GET /seances/:id" do
    let!(:seance) { Seance.create(date: 2021-06-01, time: Time.now) }

    it "works and returns status 200" do
      get("/seances/#{seance.id}")
      expect(response.status).to eq(200)
    end
  end

  describe "POST /seances" do
    it "works and returns status 201" do
      post("/seances", params: { seance: {  date: 2021-06-01, time: Time.now } } )
      expect(response.status).to eq(201)
    end
  end

  describe "PUT /seances/:id" do
    let!(:seance) { Seance.create(date: 2021-06-01, time: Time.now) }

    it "works and returns status 200" do
      put("/seances/#{seance.id}", params: { seance: { id: seance.id, date: 2021-06-15 } })
      expect(response.status).to eq(200)
    end
  end

  describe "DELETE /seances/:id" do
    let!(:seance) { Seance.create(date: 2021-06-01, time: Time.now) }

    it "works and returns status 200" do
      delete("/seances/#{seance.id}")
      expect(response.status).to eq(200)
    end
  end
end
