# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Books API", type: :request do
  let!(:books) { FactoryGirl.create_list(:book, 3) }

  describe "GET books" do
    before { get "/books" }

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end

    it "returns books" do
      json = JSON.parse(response.body)
      expect(json).not_to be_empty
      expect(json.size).to eq(3)
    end
  end
end
