class AccountingTransaction < ActiveRecord::Base
  belongs_to :creditor, :class_name => "Account", :foreign_key => "creditor_id"
  belongs_to :debitor, :class_name => "Account", :foreign_key => "debitor_id"
  before_create :execute
  
  private
  def execute
    creditor.credit amount
    debitor.debit amount
    creditor.save!
    debitor.save!
  end
end
