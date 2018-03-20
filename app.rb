require "sinatra/base"
require "sinatra/reloader"
require "sinatra/activerecord"
require "sinatra/namespace"

require './api/models/user'

require './api/controllers/app_controller'
require './api/controllers/user_controller'
