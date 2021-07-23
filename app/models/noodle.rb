class Noodle < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '極太麺' },
    { id: 3, name: '太麺' },
    { id: 4, name: '中太麺' },
    { id: 5, name: '中細麺' },
    { id: 6, name: '細麺' },
    { id: 7, name: '極細麺' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts

  end