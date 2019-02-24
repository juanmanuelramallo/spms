class CreateTransactionCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_codes do |t|
      t.string :name
      t.monetize :default_amount
      t.integer :default_due_days

      t.timestamps
    end
  end
end
