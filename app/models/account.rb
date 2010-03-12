class Account < ActiveRecord::Base
  abstract_class = true
  
  def self.types
    [Asset, Equity, Expense, Income, Liability]
  end
  
  def self.debit(method)
    class_eval %(def debit(value) write_attribute(:balance, balance #{method} value) end)
  end
  
  def self.credit(method)
    class_eval %( def credit(value) write_attribute(:balance, balance #{method} value) end)
  end
  
  def self.model_name
    name = "account"
    name.instance_eval do
      def plural;   pluralize;   end
      def singular; singularize; end
    end
    name
  end
  
  validates_presence_of :name
  before_create {|a| a.balance = BigDecimal.new('0.00')}
  validates_inclusion_of :type, :in => %w(Asset Equity Expense Income Liability)
end
