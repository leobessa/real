class AccountsController < InheritedResources::Base

  def create
    @account = Account.new(params[:account])
    @account.type = Account.types.detect{ |t| t.to_s == params[:account][:type] } || "Account"
    create!
  end
  
  def balance_sheet
    @assets = Asset.all
    @liabilities = Liability.all
    @equities = Equity.all
  end

end
