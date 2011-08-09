class Relation < ActiveRecord::Base

  belongs_to :hotel
  belongs_to :broker, :polymorphic => true

end
