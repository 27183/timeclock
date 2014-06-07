class AddStampsToPunches < ActiveRecord::Migration
  def change
    add_column :punches, :time_in, :datetime
    add_column :punches, :time_out, :datetime
  end
end
