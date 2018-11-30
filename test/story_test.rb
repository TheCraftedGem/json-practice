require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require_relative '../lib/story'


class StoryTest < Minitest::Test

  def test_it_exists 
    story = Story.new(File.read('data/nytimes.json'))
    assert_instance_of Story, story
  end

  def test_it_can_load_section
    story = Story.new(File.read('data/nytimes.json'))
  
    section = story.data_hash["results"].map do |element|
      story.story << element["section"]
    end
    binding.pry
    assert_equal 43, story.story.count
  end

end