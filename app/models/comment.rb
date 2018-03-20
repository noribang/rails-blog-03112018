class Comment < ApplicationRecord
  # Association to Article model-Each comment belongs to one article. 
  belongs_to :article
end
