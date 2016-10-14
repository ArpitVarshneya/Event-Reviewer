class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :time
      t.string :venue
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
