class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :disciplineName
      t.string :disciplineFlux
      t.string :disciplineTeacher
      t.string :disciplineRevews
      t.text :rating

      t.timestamps null: false
    end
  end
end
