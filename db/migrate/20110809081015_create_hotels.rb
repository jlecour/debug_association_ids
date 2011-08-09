class CreateHotels < ActiveRecord::Migration
  def self.up
    create_table :hotels do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :hotels
  end
end
