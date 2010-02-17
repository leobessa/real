class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :name
      t.decimal :opening_balance
      t.date :opening_date
      t.string :type
      t.decimal :balance

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
