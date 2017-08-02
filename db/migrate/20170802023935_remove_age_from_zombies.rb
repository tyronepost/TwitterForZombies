class RemoveAgeFromZombies < ActiveRecord::Migration[5.0]
  def up
    remove_column :zombies, :age, :integer
  end

  def down
    add_column :zombies, :age, :integer
  end
end
