class AccountsController < InheritedResources::Base
  actions :index, :show, :new, :create, :edit, :update

  def create
    @account = Account.new(params[:account])
    subtype = Account.types.map(&:to_s).detect{ |t| t == params[:account][:type] }
    @account.type = subtype
    create!
  end
  
  def balance_sheet
    @assets = Asset.all
    @liabilities = Liability.all
    @equities = Equity.all
  end

end
