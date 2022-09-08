class HotelGroup < ApplicationRecord
	has_many :hotels, dependent: :destroy
  accepts_nested_attributes_for :hotels, 
                                allow_destroy: true, 
                                reject_if: proc { |att| att['description'].blank? }
end
