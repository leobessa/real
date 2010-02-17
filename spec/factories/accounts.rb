# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :account do |f|
  f.name "MyString"
  f.opening_balance "9.99"
  f.opening_date "2010-02-12 21:23:04"
  f.type "MyString"
  f.balance "9.99"
end
