require 'bundler'
Bundler.require

require_relative "player"

class BoardCase
  # once a case is created, no public method can modify the attributs
  # but we can activate a case with x or o

  attr_reader :position, :content

  def initialize(index)
    @position = index
    @content = index
  end

  def active(content)
    @content = content
  end
end
