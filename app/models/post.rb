class Post < ApplicationRecord
  before_destroy { messages.destroy_all  }
  belongs_to :blog
  has_many :messages

  validates :title, presence: true, length: { minimum: 7}
  validates :content, presence: true
end
