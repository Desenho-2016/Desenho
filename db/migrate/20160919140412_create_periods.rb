class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :name
      t.date :start
      t.date :finish

      t.timestamps null: false
    end
  end
end
