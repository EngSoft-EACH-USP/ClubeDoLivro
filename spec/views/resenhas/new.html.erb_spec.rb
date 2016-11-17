require 'rails_helper'

RSpec.describe "resenhas/new", type: :view do
  before(:each) do
    assign(:resenha, Resenha.new(
      :user => "",
      :livro => "",
      :texto => ""
    ))
  end

  it "renders new resenha form" do
    render

    assert_select "form[action=?][method=?]", resenhas_path, "post" do

      assert_select "input#resenha_user[name=?]", "resenha[user]"

      assert_select "input#resenha_livro[name=?]", "resenha[livro]"

      assert_select "input#resenha_texto[name=?]", "resenha[texto]"
    end
  end
end
