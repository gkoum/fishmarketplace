class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :bun

      t.timestamps
    end
  end
end
