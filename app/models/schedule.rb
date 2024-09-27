class Schedule < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :status_id,       presence: true
  validates :match_day,       presence: true
  validates :match_week_id,   presence: true  
  validates :opponent,        presence: true
  validates :location,        presence: true
  validates :start_time,      presence: true
  validates :meeting_time   , presence: true
  validates :deadline,        presence: true

end
