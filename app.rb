# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv'
Dotenv.load

require './app/adapters/controllers/users_controller'

set :database, { adapter: 'sqlite3', database: ENV['DB_PATH'] }

post '/users' do
  { result: UsersController.create(params: params) }.to_json
end
