require "test_helper"

class NoteTest < ActiveSupport::TestCase
  test "requires a title" do
    assert_not Note.new(body: "x").valid?
  end

  test "valid with a title" do
    assert Note.new(title: "Hi").valid?
  end
end
