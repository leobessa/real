require 'spec_helper'

describe "/dash_board/index" do
  before(:each) do
    render 'dash_board/index'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/dash_board/index])
  end
end
