class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.integer :amount_credits
      t.references :teacher, index: true, foreign_key: true
      t.references :period, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
