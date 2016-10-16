class AddFieldToMention < ActiveRecord::Migration
  def change
    add_reference :mentions, :period, index: true, foreign_key: true
  end
end
