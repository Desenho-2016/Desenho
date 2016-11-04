class CreateSquareRoots < ActiveRecord::Migration
  def change
    create_table :square_roots do |t|

      t.timestamps null: false
    end
  end
end
