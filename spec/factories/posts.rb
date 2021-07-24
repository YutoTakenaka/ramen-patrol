FactoryBot.define do
  factory :post do
     ramen_name { Faker::Food.dish }
     shop_name { Faker::Company.name }
     place { Faker::Address.city }
     price { Faker::Number.between(from: 1, to: 100000) }
     soup_id { Faker::Number.between(from: 2, to: 9) }
     noodle_id { Faker::Number.between(from: 2, to: 8) }
     caption  { Faker::Lorem.sentence(word_count: 3) }
    

    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('app/assets/images/ramen-goto.png'), filename: 'ramen-goto.png')
    end
  end
end
