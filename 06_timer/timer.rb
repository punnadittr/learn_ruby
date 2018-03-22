class Timer
  attr_accessor :time_string, :seconds

  def initialize(seconds: 0, time_string: "00:00:00")
    @seconds = seconds
    @time_string = time_string
  end

  def time_string
    ss = @seconds % 60
    mm = @seconds / 60 % 60
    hh = @seconds / 60 / 60 % 24
    ss = '0' + ss.to_s if ss < 10
    mm = '0' + mm.to_s if mm < 10
    hh = '0' + hh.to_s if hh < 10
    hh.to_s + ':' + mm.to_s + ':' + ss.to_s
  end
end
