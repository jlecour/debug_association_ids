class CreateRelations < ActiveRecord::Migration
  def self.up
    create_table :relations do |t|
      t.references :broker, :polymorphic => true
      t.references :hotel
      t.integer :status, :limit => 1, :default => 0
    end
  end

  def self.down
    drop_table :relations
  end
end
