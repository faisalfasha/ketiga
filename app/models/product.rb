class Product < ApplicationRecord
	# test comen
	# coba lagi
	# ada lagi
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_then_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(png|jpg|gif)\Z}i,
		message: 'must be a URL for GIF, JPG or PNG image . '
	}


end
