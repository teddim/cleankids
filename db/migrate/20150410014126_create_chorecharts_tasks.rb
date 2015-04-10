class CreateChorechartsTasks < ActiveRecord::Migration
  def change
    create_table :charts_tasks, id: false do |t|
      t.belongs_to :chart, index: true
      t.belongs_to :task, index: true
    end
  end
end
