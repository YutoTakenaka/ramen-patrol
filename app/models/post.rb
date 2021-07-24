class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :soup
  belongs_to :noodle

  with_options presence: true do
    validates :ramen_name
    validates :shop_name
    validates :place
    validates :price, numericality: { greater_than_or_equal_to: 0, message: "is invalid"}
    validates :soup_id
    validates :noodle_id
    validates :caption
    validates :image
  end

  with_options numericality: { other_than: 1,message: "can't be blank" }  do
    validates :soup_id
    validates :noodle_id
  end

  
end
