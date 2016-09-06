class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.decimal :Price
      t.string :name
      t.string :resolution
      t.string :brand
      t.string :aspect_ratio
      t.decimal :size
      t.string :ports
      t.decimal :response_time
      t.decimal :refresh_rate
      t.boolean :speakers
      t.string :dimensions
      t.string :panel
      t.date :release
      t.string :stand_misc
      t.string :gpu_sync

      t.timestamps null: false
    end
  end
end
