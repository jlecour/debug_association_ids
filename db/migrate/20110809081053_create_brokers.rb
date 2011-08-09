class CreateBrokers < ActiveRecord::Migration
  def self.up
    create_table :blue_brokers do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :blue_brokers
  end
end
