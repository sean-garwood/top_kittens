require "test_helper"

class KittenTest < ActiveSupport::TestCase
  test "should not save perfect kitten" do
    kitten = Kitten.new(name: "test", age: 1, cuteness: 10, softness: 10)
    kitten.save
    assert_not kitten.valid?
  end

  test "kitten cannot have negative age" do
    kitten = Kitten.new(name: "test", age: -1, cuteness: 10, softness: 10)
    kitten.save
    assert_not kitten.valid?
  end

  test "kitten cannot have cuteness or softness less than 1" do
    kitten = Kitten.new(name: "test", age: 1, cuteness: 0, softness: 0)
    kitten.save
    assert_not kitten.valid?
  end

  test "valid kitten is valid" do
    kitten = Kitten.new(name: "test", age: 1, cuteness: 1, softness: 1)
    kitten.save
    assert kitten.valid?
  end
end
