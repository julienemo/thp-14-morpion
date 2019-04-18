require 'bundler'
Bundler.require

require_relative "player"

class BoardCase
  # once a case is created, no public method can modify the attributs
  # but we can activate a case with x or o
  # however once a case is activate
  # we can't activate it for a second time
  attr_reader :position, :content, :status

  def initialize(index)
    @position = index
    @content = index
    @status = true
  end

  def active(content)
    @content = content
    @status = false
  end
end
