class CreateTeachings < ActiveRecord::Migration[5.1]
  def change
    create_table :teachings do |t|
      t.string :link
      t.references :category, foreign_key: true
      t.string :title
      t.integer :views

      t.timestamps
    end
  end
end
