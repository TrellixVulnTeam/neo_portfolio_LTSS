require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "post" do
    context "when save valid data" do
      subject { create(:post, title: "これはテストです", description: "これはテストです") }
      it { is_expected.to be_valid }
    end
  end
end
