class Account < ActiveRecord::Base
  abstract_class = true
  
  def self.types
    %w(Asset Capital Expense Income Liability)
  end
  def self.debit(method)
    class_eval %(def debit(value) write_attribute(:balance, balance #{method} value) end)
  end
  def self.credit(method)
    class_eval %( def credit(value) write_attribute(:balance, balance #{method} value) end)
  end
  
  validates_presence_of :name, :opening_balance, :opening_date
  before_create {|a| a.balance = a.opening_balance }
  validates_inclusion_of :type, :in => Account.types
end
