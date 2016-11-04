class CreateMentionSoftwareDesigns < ActiveRecord::Migration
  def change
    create_table :mention_software_designs do |t|
      t.float :score1
      t.float :score2
      t.float :score3

      t.timestamps null: false
    end
  end
end
