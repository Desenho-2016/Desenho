class CreateCommonAverages < ActiveRecord::Migration
  def change
    create_table :common_averages do |t|
      t.float :scorep1
      t.float :scorep2
      t.float :scorep3

      t.timestamps null: false
    end
  end
end
