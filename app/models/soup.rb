class Soup < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '醤油' },
    { id: 3, name: '塩' },
    { id: 4, name: '味噌' },
    { id: 5, name: '豚骨' },
    { id: 6, name: '魚介' },
    { id: 7, name: '鶏白湯' },
    { id: 8, name: '汁なし' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts

  end