class RemoveBirthYearFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :birth_year, :string
  end
end
