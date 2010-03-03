class CreateAccountingTransactions < ActiveRecord::Migration
  def self.up
    create_table :accounting_transactions do |t|
      t.string :title
      t.text :description
      t.decimal :amount
      t.integer :creditor_id
      t.integer :debitor_id
      t.date :date
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :accounting_transactions
  end
end
