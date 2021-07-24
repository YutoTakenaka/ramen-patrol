require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post =FactoryBot.build(:post)
  end


  describe '新規投稿' do

  context '新規投稿ができる' do
    it '必須項目がすべて入力されている' do
      expect(@post).to be_valid
    end
  end

  context '新規投稿ができない' do
    it 'ramen_nameが空では投稿できない' do
      @post.ramen_name = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Ramen name can't be blank")
    end

    it 'shop_nameが空では投稿できない' do
      @post.shop_name = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Shop name can't be blank")
    end

    it 'placeが空では投稿できない' do
      @post.place = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Place can't be blank")
    end

    it 'priceが空では投稿できない' do
      @post.price = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Price can't be blank")
    end
    
    it 'priceが全角数字では投稿できない' do
      @post.price = '１２３'
      @post.valid?
      expect(@post.errors.full_messages).to include("Price is invalid")
    end

    it 'priceに数字以外が含まれると投稿できない' do
      @post.price = '123a'
      @post.valid?
      expect(@post.errors.full_messages).to include("Price is invalid")
    end

    it 'soup_idが空では投稿できない' do
      @post.soup_id = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Soup can't be blank")
    end
    
    it 'soup_idが1では投稿できない' do
      @post.soup_id = '1'
      @post.valid?
      expect(@post.errors.full_messages).to include("Soup can't be blank")
    end

    it 'noodle_idが空では投稿できない' do
      @post.noodle_id = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Noodle can't be blank")
    end

    it 'noodle_idが1では投稿できない' do
      @post.noodle_id = '1'
      @post.valid?
      expect(@post.errors.full_messages).to include("Noodle can't be blank")
    end

    it 'captionが空では投稿できない' do
      @post.caption = ''
      @post.valid?
      expect(@post.errors.full_messages).to include("Caption can't be blank")
    end

  end
  end
end