class CreatePunches < ActiveRecord::Migration
  def change
    create_table :punches do |t|
      t.timestamps
      t.datetime 'punch_in'
      t.datetime 'punch_out'
    end
  end
end
