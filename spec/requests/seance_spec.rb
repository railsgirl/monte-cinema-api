# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Seances', type: :request do
  let!(:seance) { Seance.create(start_time: Time.now) }

  describe 'GET /seances' do
    it 'works and returns status 200' do
      get('/seances')
      expect(response.status).to eq(200)
    end
  end

  describe 'GET /seances/:id' do
    it 'works and returns status 200' do
      get("/seances/#{seance.id}")
      expect(response.status).to eq(200)
    end
  end

  describe 'POST /seances' do
    it 'works and returns status 201' do
      post('/seances', params: { seance: { start_time: Time.now } })
      expect(response.status).to eq(201)
    end
  end

  describe 'PUT /seances/:id' do
    it 'works and returns status 200' do
      put("/seances/#{seance.id}", params: { seance: { id: seance.id, start_time: Time.current + 1.hour } })
      expect(response.status).to eq(200)
    end
  end

  describe 'DELETE /seances/:id' do
    it 'works and returns status 200' do
      delete("/seances/#{seance.id}")
      expect(response.status).to eq(200)
      expect(Seance.find_by(id: seance.id).to(eq(nil)))
    end
  end
end
