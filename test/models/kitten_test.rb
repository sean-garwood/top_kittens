require "test_helper"

class KittenTest < ActiveSupport::TestCase
  test "should save kitten" do
    kitten = Kitten.new(name: "test", age: 1, cuteness: 10, softness: 10)
    kitten.save
    assert kitten.valid?
  end

  test "kitten cannot have negative age" do
    kitten = Kitten.new(name: "test", age: -1, cuteness: 10, softness: 10)
    kitten.save
    assert_not kitten.valid?
  end
end
