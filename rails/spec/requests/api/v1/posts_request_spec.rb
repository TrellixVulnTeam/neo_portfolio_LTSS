require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /api/v1/posts" do
    it 'returns a posts' do
      is_expected.to eq 200
      body = response.body

      expect(body).to have_json_path("data")
    end
  end

  describe "POST /api/v1/posts" do
    let(:params) { build(:post) }
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    it 'returns a succes message and post' do
      is_expected.to eq 200
    end
  end
end
