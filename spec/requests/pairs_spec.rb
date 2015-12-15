require 'rails_helper'

RSpec.describe "Pairs", type: :request do
  describe "GET /pairs" do
    it "works! (now write some real specs)" do
      get pairs_path
      expect(response).to have_http_status(200)
    end
  end
end
