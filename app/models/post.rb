class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :ramen_name
    validates :shop_name
    validates :place
    validates :price
    validates :soup_id
    validates :noodle_id
    validates :caption
    validates :image
  end
  
end
