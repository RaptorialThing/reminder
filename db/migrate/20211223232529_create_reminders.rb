class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.boolean :no_in_progress_task, :default => true
      t.belongs_to :user
    end
  end
end
