require 'test_helper'

class BlueBrokerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "hotels should be the same in the collection and by ids" do
    broker = BlueBroker.first
    
    actual = broker.hotel_ids
    expected = broker.hotels.map(&:id)
    
    assert_equal expected, actual
  end
end
