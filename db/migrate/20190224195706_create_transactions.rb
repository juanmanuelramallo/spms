class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.monetize :amount
      t.string :description
      t.datetime :due_date

      t.timestamps
    end
  end
end
