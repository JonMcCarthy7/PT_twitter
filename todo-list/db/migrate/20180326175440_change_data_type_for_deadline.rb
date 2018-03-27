class ChangeDataTypeForDeadline < ActiveRecord::Migration[5.1]
  def up
    change_column :tasks, :deadline, :string
  end

  def down
    change_column :tasks, :deadline, :datetime
  end
end
