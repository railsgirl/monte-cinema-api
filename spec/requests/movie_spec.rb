# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Movies', type: :request do
  let!(:movie) { Movie.create(title: 'Some title', duration: 120, genre: 'Comedy') }

  describe 'GET /movies' do
    it 'works and returns status 200' do
      get('/movies')
      expect(response.status).to eq(200)
    end
  end

  describe 'GET /movies/:id' do
    it 'works and returns status 200' do
      get("/movies/#{movie.id}")
      expect(response.status).to eq(200)
    end
  end

  describe 'POST /movies' do
    it 'works and returns status 201' do
      post('/movies', params: { movie: { title: 'Some title', duration: 120, genre: 'Comedy' } })
      expect(response.status).to eq(201)
    end
  end

  describe 'PUT /movies/:id' do
    it 'works and returns status 200' do
      put("/movies/#{movie.id}", params: { movie: { id: movie.id, title: 'new title' } })
      expect(response.status).to eq(200)
    end
  end

  describe 'DELETE /movies/:id' do
    it 'works and returns status 200' do
      delete("/movies/#{movie.id}")
      expect(response.status).to eq(200)
    end
  end
end
