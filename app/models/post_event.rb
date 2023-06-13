class PostEvent < ApplicationRecord
  belongs_to :genre
  
  #tweetsテーブルから中間テーブルに対する関連付け
  has_many :post_zbtag_relations, dependent: :destroy
  #tweetsテーブルから中間テーブルを介してTagsテーブルへの関連付け
  has_many :zbs, through: :post_zbtag_relations, dependent: :destroy
  
  has_one_attached :image
  
end
