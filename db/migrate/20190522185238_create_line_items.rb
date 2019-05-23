class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.references :budget, foreign_key: true
      t.string :name
      t.float :amount
      t.references :user, foreign_key: true
      t.boolean :paid

      t.timestamps
    end
  end
end
