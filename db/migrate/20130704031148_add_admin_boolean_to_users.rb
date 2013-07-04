class AddAdminBooleanToUsers < ActiveRecord::Migration

  def change
    add_column :users, :admin, :boolean, :default => false, :after => :last_login_ip
  end

end
