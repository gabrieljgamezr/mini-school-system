class ChangeColumnUsernamePasswordNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :users, :username, false
    change_column_null :users, :password, false
  end
end
