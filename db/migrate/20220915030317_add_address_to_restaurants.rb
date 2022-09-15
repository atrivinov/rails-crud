class AddAddressToRestaurants < ActiveRecord::Migration[7.0]
  def change
    # Al hacer rails g migration AddAddressToRestaurants se genera este archivo
    # con el metodo change vacio, hay que agregar las columnas respectivas
    add_column :restaurants, :address, :string
    # instruction :table, :column, :type
  end
end
