class ChangeProfile < ActiveRecord::Migration[5.0]
  def up
    change_column :profiles, :photo, :string, default: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1492607614/avatar_hjmyte.png'
  end
end
