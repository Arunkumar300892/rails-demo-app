class ChangeAvatarFormatInImageTable < ActiveRecord::Migration[5.1]
  def change
    change_column :images, :avatars, :string
    rename_column :images, :avatars, :avatar
  end
end
