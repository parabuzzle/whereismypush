class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.column :name, :string
      t.column :email, :string, :null=>false
      t.column :soundcloud, :string
      t.column :website, :string
      t.column :approved, :boolean, :null=>false, :default=>false
      t.column :message, :string
      t.column :order_date, :string
      t.timestamps
    end
  end
end
