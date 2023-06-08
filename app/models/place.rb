class Place < ApplicationRecord

    # 空で保存できないバリテーション
  with_options presence: true do
    validates :place
  end

end
