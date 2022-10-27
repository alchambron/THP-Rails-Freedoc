class Linkdoctorpatient < ActiveRecord::Migration[7.0]
  def change
    add_reference :patients, :doctor, foreign_key: true
  end
end
