class CreateBudgetMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :budget_members do |t|
      t.references :budget, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :admin

      t.timestamps
    end
  end
end
