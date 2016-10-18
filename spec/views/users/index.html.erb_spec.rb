require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(:name => 'asdf', :email => 'asdf@asdf.com', :password => 'asdf123'),
      User.create!(:name => 'asdf', :email => 'asdf2@asdf.com', :password => 'asdf123')
    ])
  end

  it "renders a list of users" do
    render
  end
end
