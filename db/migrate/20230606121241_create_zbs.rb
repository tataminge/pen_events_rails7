class CreateZbs < ActiveRecord::Migration[7.0]
  def change
    create_table :zbs do |t|
      t.string "zb_name", null: false

      t.timestamps
    end
  end
end
