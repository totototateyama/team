class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '未確定' },
    { id: 3, name: '確定' }
  ]

  include ActiveHash::Associations
  has_many :schedules

  end