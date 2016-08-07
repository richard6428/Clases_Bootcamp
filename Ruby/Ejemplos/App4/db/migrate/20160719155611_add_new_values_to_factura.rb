class AddNewValuesToFactura < ActiveRecord::Migration
  def change
    add_column :facturas, :Date, :string
  end
end
