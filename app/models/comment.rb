class Comment < ApplicationRecord
  belongs_to :post, dependent: :destroy, foreign_key: 'post_id'
  accepts_nested_attributes_for :post
  validates :post_id,
  presence: true
  def to_s
    post_id
  end
end
