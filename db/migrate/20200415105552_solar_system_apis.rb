class SolarSystemApis < ActiveRecord::Migration[6.0]
  def change
    create_table :solar_system_apis do |t|
      t.string :object_id
      t.string :eng_name
    end
  end
end
