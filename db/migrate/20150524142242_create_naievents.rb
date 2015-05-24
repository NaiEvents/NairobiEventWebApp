class CreateNaievents < ActiveRecord::Migration
  def change
    create_table :naievents do |t|
      t.string :title
      t.string :location
      t.datetime :date

      t.timestamps null: false
    end
  end
end
