class AddHostToTenants < ActiveRecord::Migration[6.1]
  def change
    add_column :tenants, :host, :string
  end
end
