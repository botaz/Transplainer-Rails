class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.text   :profile
      t.string :address
      t.string :city
      t.string :post_code
      t.string :state
      t.string :country

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
