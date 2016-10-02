class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :type_user, :string, default: 'visitor'
  end
end
