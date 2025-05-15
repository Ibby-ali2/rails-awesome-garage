class Owner < ApplicationRecord
  validates :nickname, uniqueness: true;
end
