require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "post" do
    context "when save valid data" do
      subject { create(:post, title: "これはテストです", description: "これはテストです") }
      it { is_expected.to be_valid }
    end

    context "when save invalid data" do
      let!(:post) { Post.new() }
      it 'in valid title' do
        post.valid?
        expect(post.errors.messages[:title]).to include("can't be blank")
      end
    end
  end
end
