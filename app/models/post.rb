class Post < ApplicationRecord
  has_many :comment;
  accepts_nested_attributes_for :comment
  validates :title,
  presence: true
  def to_s
    title
  end
end
