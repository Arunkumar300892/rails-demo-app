class ChangePhoneFormatInProfileTable < ActiveRecord::Migration[5.1]
  def change
    change_column :profiles, :phone, :string
  end
end
