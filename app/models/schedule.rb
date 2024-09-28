class Schedule < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status
  belongs_to :match_week

  validates :status_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :match_week_id, numericality: { other_than: 1 , message: "can't be blank"}

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
