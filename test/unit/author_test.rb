require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test "should not save author with long name" do
    author = Author.new
    author.name = '12345678910'
    author.password = '123456'
    assert !author.save, 'Try to save author with name > 10 chars'
  end
end
