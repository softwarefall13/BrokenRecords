class Review < ActiveRecord::Base
  belongs_to :post
  belongs_to :review
  attr_protected :rating, :user_id
end
