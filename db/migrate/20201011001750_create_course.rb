class CreateCourse < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |c|
      c.string :name
      c.string :professor
      c.integer :credits
    end
  end
end
