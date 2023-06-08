class Zb < ApplicationRecord

  # 空で保存できないバリテーション
  with_options presence: true do
    validates :zb_name
  end

end
