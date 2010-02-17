class AccountsController < InheritedResources::Base

  def create
    account_class_name = Account.types.detect{ |t| t.to_s == params[:type] } || "Account"
    account_class = account_class_name.constantize
    @account = account_class.new(params[:account] || params[account_class_name.downcase.to_sym])
    create!
  end

end
