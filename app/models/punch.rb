class Punch < ActiveRecord::Base
  def punch_time
    return 0 if punch_out.nil?
    punch_out - punch_in
  end

  def working?
    punch_in && !punch_out
  end

  def punch
    if working? then
      self.punch_out = Time.now
    else
      self.punch_in = Time.now
    end
  end

  def punch_in= t
    super t unless working?
    super t if punch_in == nil
  end

  def punch_out= t
    super t if working?
  end

end
