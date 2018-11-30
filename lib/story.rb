require 'json'
require 'pry'

class Story
  attr_reader :data,
              :stories,
              :section,
              :subsection,
              :link,
              :published,
              :photo,
              :title,
              :abstract

  def initialize(data)
    @data = data
    @stories = []
    @section = []
    @subsection = []
    @title = []
    @abstract = []
    @link = []
    @published = []
    @photo = []
  end 

  def create_section
    @section = @data["results"].map do |story|
      Story.new(story["section"])
    end
  binding.pry
    #section - String
    #subsection - String
    #title - String - text containing the string of the story
    #abstract - String - summary of the story
    #link - String - URL of where the story is located
    #published - String - Date that the story was published. Example format: "November 29, 2019"
    #photo
  end

end