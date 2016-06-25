class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.timestamps null: false
      t.integer   :user_id
      t.string    :title
      t.text      :description
      t.datetime  :duedate
      t.integer   :priority, default: 1
      t.boolean   :is_completed, default: false
    end
  end
end
