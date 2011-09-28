class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :tax_year_id
      t.integer :cat_code_id
      t.string :rec_details
      t.string :inv_rec_no
      t.decimal :rec_amount,  :precision => 9, :scale => 2
      t.integer :gst_cat_id
      t.decimal :gst_amount,  :precision => 8, :scale => 2
      t.decimal :bankings,  :precision => 9, :scale => 2
      t.text :comments
      t.integer :rec_month
      t.integer :rec_day

      t.timestamps
    end
  end
end
