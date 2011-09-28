class CreateTaxYears < ActiveRecord::Migration
  def change
    create_table :tax_years do |t|
      t.integer :tax_year
      t.integer :home_id

      t.timestamps
    end
  end
end
