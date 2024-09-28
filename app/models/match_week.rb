class MatchWeek < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '(土)' },
    { id: 3, name: '(日)' },
    { id: 4, name: '(祝)' }
  ]

  include ActiveHash::Associations
  has_many :schedules

  end