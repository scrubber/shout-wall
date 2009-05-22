require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "defaults to descending date order" do
    Message.create(:author => "Test", :message => "Message 1", :created_at => 2.days.ago)
    Message.create(:author => "Test", :message => "Message 2", :created_at => 1.days.ago)

    messages = Message.all
    assert_equal "Message 2", messages.first.message
  end
end
