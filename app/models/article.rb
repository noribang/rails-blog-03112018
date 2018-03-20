class Article < ApplicationRecord
	# Association to comment model-Each article has many comments.
	has_many :comments
	# Validates article title has at least 5 characters.
	validates :title, presence: true, length: { minimum: 5 }
end
