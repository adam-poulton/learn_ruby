class Timer
  #write your code here
  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    hours = padded(@seconds / 3600)
    mins = padded((@seconds % 3600) / 60)
    secs = padded((@seconds % 3600) % 60)    
    "#{hours}:#{mins}:#{secs}"
  end

  def padded(num)
    if num < 10
      '0' + num.to_s
    else
      num.to_s
    end
  end

end
