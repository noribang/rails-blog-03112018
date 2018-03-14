class Article < ApplicationRecord
	# Validates article title has at least 5 characters.
	validates :title, presence: true, length: { minimum: 5 }
end
