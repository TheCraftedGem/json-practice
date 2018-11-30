require 'json'
require 'pry'

class Story
  attr_reader :data_hash, :story

  def initialize(file)
    @data_hash = JSON.parse(file)
    @story = []
    
  end

end