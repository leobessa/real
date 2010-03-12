# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def number_to_brl_currency(number)
    number_to_currency(number,:delimiter => ".", :separator => ",", :unit => "R$", :precision => 2)
  end
end
