class AddDefaultValueToRead < ActiveRecord::Migration[5.2]
  def up
  change_column :emails, :read, :boolean, default: false
 end

 def down
  change_column :emails, :read, :boolean, default: nil
 end
end
