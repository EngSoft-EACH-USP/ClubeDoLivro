require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(:name => 'asdf', :email => 'asdf@asdf.com', :password => 'asdf123'))
  end

  it "renders attributes in <p>" do
    render
  end
end
