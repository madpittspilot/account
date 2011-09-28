class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :business_name
      t.string :tfn
      t.string :email1
      t.string :email2
      t.string :phone1
      t.string :phone2
      t.string :abn
      t.string :street1
      t.string :street2
      t.string :suburb
      t.integer :state_id
      t.integer :current_tax_year_id

      t.timestamps
    end
  end
end
