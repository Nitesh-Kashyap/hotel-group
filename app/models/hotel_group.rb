class HotelGroup < ApplicationRecord
	has_many :hotels, dependent: :destroy
  has_many :hotels, inverse_of: :hotel_group, dependent: :destroy
  accepts_nested_attributes_for :hotels, reject_if: :all_blank, allow_destroy: true
end
