require 'spec_helper'

describe "Clients" do
  describe "GET /clients" do
    it "works! (now write some real specs)" do
      get clients_path
      expect(response.status).to be(200)
    end
  end
end
