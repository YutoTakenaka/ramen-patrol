FactoryBot.define do
  factory :user do
    nickname {Faker::Internet.username}
    email {Faker::Internet.free_email}
    password {Faker::Internet.password(min_length: 6)}
    
    after(:build) do |user|
      user.image.attach(io: File.open('app/assets/images/star.png'), filename: 'star.png')
    end
  end
end
