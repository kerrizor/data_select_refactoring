class DateSelect
  def self.calculate_deal_calendar_dates(date, direction, timeframe)
    if direction == 'prev'
      end_date = date - 1.day

      if timeframe.blank?
        end_date   = (date - 1.day).end_of_week + 4.weeks
        start_date = (end_date - 5.weeks).beginning_of_week
      elsif timeframe =~ /week/
        start_date = end_date.beginning_of_week
      elsif timeframe =~ /month/
        start_date = end_date - 4.weeks
      else
        start_date = date - 1.day
      end
    else
      start_date = date.end_of_week + 1.day

      if timeframe.blank?
        start_date = (date + 1.day).beginning_of_week - 4.weeks
        end_date   = (start_date + 5.weeks).end_of_week
      elsif timeframe =~ /week/
        end_date   = start_date.end_of_week
      elsif timeframe =~ /month/
        end_date   = start_date + 4.weeks
      else
        start_date = end_date = date + 1.day
      end
    end

    [start_date, end_date]
  end
end
