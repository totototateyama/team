class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name_kanji,    presence: true
  validates :name_katakana, presence: true

  has_many :schedules
  has_many :comments

end
