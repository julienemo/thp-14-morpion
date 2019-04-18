require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require "app/player"
require "app/boardcase"
require "app/board"
require "app/game"
require "views/show"
require "views/application"

class App
  attr_reader :application
  def initalize
    @application = Application.new
  end
end

App.new
