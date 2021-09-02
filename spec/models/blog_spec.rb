# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Blog, "投稿モデルに関するテスト", type: :model do
  describe '実際に投稿してみる' do

    context "有効な投稿の場合" do
      let(:blog) { build (:blog) }
        it "投稿が保存されるか" do
          expect(blog).to be_valid
        end
    end

    context "タイトルが空白の場合" do
      let(:blog) { build(:blog, title: nil) }
        it "投稿が保存されるか" do
          expect(blog).to be_invalid
        end
    end

    context "カテゴリが空白の場合" do
      let(:blog) { build(:blog, category: nil) }
        it "投稿が保存されるか" do
          expect(blog).to be_invalid
        end
    end

    context "本文が空白の場合" do
      let(:blog) { build(:blog, body: nil) }
        it "投稿が保存されるか" do
          expect(blog).to be_invalid
        end
    end

  end
end
