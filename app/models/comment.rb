class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :schedule

  validates :content, presence: true

end
