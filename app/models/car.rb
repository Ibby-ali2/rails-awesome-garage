class Car < ApplicationRecord
  belongs_to :owner

  has_many :reviews
  has_many :favourites

  validates :brand, presence: true;
  validates :model, presence: true;
  validates :year, presence: true;

end
