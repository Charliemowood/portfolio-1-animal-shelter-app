require('minitest/autorun')
require('minitest/emoji')
require_relative('../models/cat.rb')

class TestOwner < MiniTest::Test

  def setup
    @owner1 = Cat.new()
  end

  def test_cat_class_exists
    refute_nil(@owner1)
  end

end
