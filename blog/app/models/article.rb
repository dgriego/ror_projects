class Article < ApplicationRecord
  # if an article is destroyed so are the comments associated with it
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }
end
