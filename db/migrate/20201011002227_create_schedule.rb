class CreateSchedule < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |s|
      s.integer :course_id
    end
  end
end
