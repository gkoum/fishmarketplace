class AddAtributesToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :free, :boolean
    add_column :applications, :categiry, :string
    add_column :applications, :domain, :string
    add_column :applications, :endDevices, :string
    add_column :applications, :version, :string
    add_column :applications, :userRating, :string
  end
end
