require "rubygems"
require "bundler"
require "sinatra/base"
require "./app.rb"

run Teams::App.new
