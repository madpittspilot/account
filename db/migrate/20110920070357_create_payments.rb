class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :tax_year_id
      t.integer :cat_code_id
      t.string :pay_details
      t.integer :pay_method_id
      t.string :ref_no
      t.decimal :pay_amount,  :precision => 9, :scale => 2
      t.integer :gst_cat_id
      t.decimal :gst_amount,  :precision => 8, :scale => 2
      t.decimal :priv_use_percent,  :precision => 5, :scale => 2
      t.decimal :priv_use_amount,  :precision => 9, :scale => 2
      t.integer :pay_month
      t.integer :pay_day

      t.timestamps
    end
  end
end
