require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  def setup
    data = [{ :author => "Test", :message => "Message 1", :created_at => 2.days.ago },
            { :author => "Test", :message => "Message 2", :created_at => 1.days.ago }]
    data.each do |hash|
      Message.create(hash)
    end
  end

  test "loading the index displays a list of current messages" do
    get :index

    assert_not_nil assigns(:messages)
    assert_template "index"
    assert_template :partial => "message"
  end

  test "submitting a message to create, creates it" do
    count = Message.count

    post :create, :message => { :author => "Test Submission", :message => "Test Message" }
    
    assert_equal count + 1, Message.count
    assert_response :redirect
    assert_redirected_to messages_path
    assert_not_nil flash[:info]
  end

  test "submitting a message to create using ajax should render a partial containing it" do
    count = Message.count

    post :create, :message => { :author => "Test Ajax", :message => "Ajax Test" }, :format => "js"

    assert_equal count + 1, Message.count
    assert_response :success
    assert_template :partial => "message"
    assert_not_nil flash[:info]
    assert_match flash[:info], @response.headers["X-JSON"]
  end
end
