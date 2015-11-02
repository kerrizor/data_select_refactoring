require 'test_helper'
require 'date_select'

class DateSelectTest < MiniTest::Unit::TestCase
  describe DateSelect do
    it 'should have a calculate_deal_calendar_dates method' do
      DateSelect.must_respond_to :calculate_deal_calendar_dates
    end
  end
end
