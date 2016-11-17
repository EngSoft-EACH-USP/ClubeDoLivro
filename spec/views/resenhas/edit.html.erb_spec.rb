require 'rails_helper'

RSpec.describe "resenhas/edit", type: :view do
  before(:each) do
    @resenha = assign(:resenha, Resenha.create!(
      :user => "",
      :livro => "",
      :texto => ""
    ))
  end

  it "renders the edit resenha form" do
    render

    assert_select "form[action=?][method=?]", resenha_path(@resenha), "post" do

      assert_select "input#resenha_user[name=?]", "resenha[user]"

      assert_select "input#resenha_livro[name=?]", "resenha[livro]"

      assert_select "input#resenha_texto[name=?]", "resenha[texto]"
    end
  end
end
