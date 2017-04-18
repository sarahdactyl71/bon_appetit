require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test


def test_init
  p = Pantry.new
  assert_instance_of Pantry, p
end
end
