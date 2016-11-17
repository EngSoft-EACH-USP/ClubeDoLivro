require 'rails_helper'

RSpec.describe "Resenhas", type: :request do
  describe "GET /resenhas" do
    it "works! (now write some real specs)" do
      get resenhas_path
      expect(response).to have_http_status(200)
    end
  end
end
