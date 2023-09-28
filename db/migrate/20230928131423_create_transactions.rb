class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :transaction_number
      t.integer :quantity
      t.decimal :total_cost

      t.timestamps
    end
  end
end
