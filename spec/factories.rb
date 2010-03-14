Account.types.map{|t| t.to_s.underscore.to_sym }.each do |subtype|

  Factory.define subtype do |a|
    a.sequence(:name){|n| "account #{n}" }
  end

end