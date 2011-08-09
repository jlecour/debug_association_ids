class Hotel < ActiveRecord::Base

  has_many :relations, :dependent => :destroy
  has_many :blue_brokers,
    :through => :relations,
    :source => :broker,
    :source_type => 'BlueBroker',
    :conditions => {
      :relations => {
        :status => 1
      }
    }

end
