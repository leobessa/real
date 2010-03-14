class DashBoardController < ApplicationController
  
  def index
    @accounts = Account.all
  end

end
