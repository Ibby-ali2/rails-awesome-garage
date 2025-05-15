class Review < ApplicationRecord
  belongs_to :car

  validates :comment, presence: true, length: { minimum: 6 }


end
