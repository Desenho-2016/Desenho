class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :semester

      t.timestamps null: false
    end
  end
end
