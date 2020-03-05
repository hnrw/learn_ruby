class Timer
  #write your code here
  attr_accessor :seconds
  attr_accessor :timer


  def initialize 
    @seconds = 0
  end
  
  def time_string
    hours = @seconds / 3600
    minutes = (@seconds - 3600 * hours) / 60
    seconds = (@seconds - 3600 * hours - 60 * minutes)

    ans = ""
    if hours < 10
      ans << "0" + hours.to_s + ":"
    else
      ans << hours.to_s + ":"
    end

    if minutes < 10
      ans << "0" + minutes.to_s + ":"
    else
      ans << minutes.to_s + ":"
    end

    if seconds < 10
      ans << "0" + seconds.to_s
    else
      ans << seconds.to_s
    end
    
    
  end

end

@timer = Timer.new
@timer.seconds = 4000
puts @timer.time_string