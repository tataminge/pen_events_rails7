class Genre < ApplicationRecord

  # 空で保存できないバリテーション
  with_options presence: true do
    validates :genre, length: { maximum: 10 }
  end

end
