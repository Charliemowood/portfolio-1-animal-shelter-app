require('minitest/autorun')
require('minitest/emoji')
require_relative('../models/owner.rb')

class TestOwner < MiniTest::Test

  def setup
    @owner1 = Owner.new()
  end

  def test_owner_class_exists
    refute_nil(@owner1)
  end

end
