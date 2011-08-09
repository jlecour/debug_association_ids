class BlueBroker < ActiveRecord::Base
  
  has_many :relations, :as => :broker, :dependent => :destroy

  has_many :hotels,
    :through => :relations,
    :conditions => {
      :relations => {:status => 1}
    }
  
end
