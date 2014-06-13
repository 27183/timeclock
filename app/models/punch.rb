class Punch < ActiveRecord::Base
  def punch_time
    return 0 if punch_out.nil?
    punch_out - punch_in
  end
end
