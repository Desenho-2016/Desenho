class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.integer :amount_credits

      t.timestamps null: false
    end
  end
end
