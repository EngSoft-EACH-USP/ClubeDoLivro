require 'rails_helper'

RSpec.describe "resenhas/index", type: :view do
  before(:each) do
    assign(:resenhas, [
      Resenha.create!(
        :user => "",
        :livro => "",
        :texto => ""
      ),
      Resenha.create!(
        :user => "",
        :livro => "",
        :texto => ""
      )
    ])
  end

  it "renders a list of resenhas" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
