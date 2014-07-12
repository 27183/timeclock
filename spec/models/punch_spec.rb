require 'rails_helper'

RSpec.describe Punch, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe 'Punching' do


    it 'should be clean to punch out after punching' do
      p = Punch.new
      p.punch_in = Time.now
      p.punch_out = Time.now
      p.punch_out.should be_truthy
    end

    it 'Punching out time without punching in should fail' do
      p = Punch.new
      p.punch_out = Time.now
      p.punch_out.should be_falsey
    end

    it 'Method punch should be equivalent to punch_in for new punch' do
      p = Punch.new
      p.punch
      p.working?.should be_truthy

      p.punch
      p.working?.should be_falsey
    end

    it 'Person should be not be working when punched out' do
      p = Punch.new
      p.punch
      p.punch
      p.working?.should be_falsey
    end

    it 'Person should be working when punched in' do
      p = Punch.new
      p.punch
      p.working?.should be_truthy
    end

    it 'New punch should not be working' do
      p = Punch.new
      p.working?.should be_falsey
    end
  end

end
