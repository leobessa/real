class AccountsController < InheritedResources::Base
  actions :index, :show, :new, :create

  def create
    @account = Account.new(params[:account])
    @account.type = Account.types.map(&:to_s).detect("Account"){ |t| t == params[:account][:type] }
    p @account
    create!
  end
  
  def balance_sheet
    @assets = Asset.all
    @liabilities = Liability.all
    @equities = Equity.all
  end

end
