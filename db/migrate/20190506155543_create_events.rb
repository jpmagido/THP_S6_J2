class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.time :date_begin
      t.integer :duration

      t.timestamps
    end
  end
end
