class Linkspecialtytodoctor < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :specialty, foreign_key: true
  end
end
