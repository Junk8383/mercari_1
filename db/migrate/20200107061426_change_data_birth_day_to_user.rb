class ChangeDataBirthDayToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :birth_day, :integer
  end
end
