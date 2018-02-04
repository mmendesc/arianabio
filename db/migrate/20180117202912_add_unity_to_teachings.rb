class AddUnityToTeachings < ActiveRecord::Migration[5.1]
  def change
    add_column :teachings, :unity, :integer
  end
end
