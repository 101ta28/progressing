class User < ApplicationRecord
  validates :student_id, presence: true, uniqueness: true, length: { maximum: 7}
  validates :name, presence: true, length: { maximum: 50}
end
