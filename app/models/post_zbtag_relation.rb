class PostZbtagRelation < ApplicationRecord
  belongs_to :post_event
  belongs_to :zb
end
