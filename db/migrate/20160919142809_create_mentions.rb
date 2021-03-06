class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.string :value
      t.string :semester
      t.references :discipline, index: true, foreign_key: true
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
