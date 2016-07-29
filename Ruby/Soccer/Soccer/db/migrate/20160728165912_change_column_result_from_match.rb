class ChangeColumnResultFromMatch < ActiveRecord::Migration
  def change
  	change_column :matches, :result, :string
  end
end
