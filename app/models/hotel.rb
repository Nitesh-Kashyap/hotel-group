class Hotel < ApplicationRecord
  belongs_to :hotel_group
  has_many :rooms, dependent: :destroy
  has_many :roomss, inverse_of: :hotel, dependent: :destroy
  accepts_nested_attributes_for :rooms, reject_if: :all_blank, allow_destroy: true
end
