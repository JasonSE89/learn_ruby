class Timer
    @seconds
    @time_string
  def initialize
    @seconds = 0
    @time_string = "00:00:00"
  end
  def seconds=(new_time)
    @seconds = new_time
  end
  def seconds
      @seconds
  end
  def time_string
    @time_string = ""
    minutes = @seconds/60
    remaining_seconds = @seconds%60
    if(@seconds/3600 >= 1)
      @time_string = "%.2d" % (@seconds/3600) +  ":" + "%.2d" % (@seconds%3600/60) + ":" + "%.2d" % (@seconds%3600%60)
    else
      @time_string = "00:" + "%.2d" % minutes + ":" + "%.2d" % remaining_seconds
    end
  end
end
