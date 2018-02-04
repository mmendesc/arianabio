class ChangeTeachings < ActiveRecord::Migration[5.1]
  def change
    add_column :teachings, :topics, :string
    change_column :teachings, :unity, :string
  end
end
