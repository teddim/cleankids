class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :task_type
      t.integer :user_id, default: nil
      t.integer :times_used, default: 0

      t.timestamps
    end
  end
end
