require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require_relative '../lib/story'


class StoryTest < Minitest::Test

  def setup 
    @data = JSON.parse(File.read('data/nytimes.json'))
  end

  def test_it_exists 
    story = Story.new(@data)
    assert_instance_of Story, story
  end


  def test_it_can_load_section

    story = Story.new(@data)
    
    story.create_section
    assert_equal 1, story.section.count
  end
  

end