class Post < ApplicationRecord
  has_many :comment;
  validates :title,
  presence: true
  def to_s
    title
  end
end
