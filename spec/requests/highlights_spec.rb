require 'rails_helper'

RSpec.describe "Highlights", type: :request do
  describe "GET /highlights" do
    it "works! (now write some real specs)" do
      get highlights_path
      expect(response).to have_http_status(200)
    end
  end
end
