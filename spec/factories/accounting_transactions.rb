# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :accounting_transaction do |f|
  f.title "MyString"
  f.description "MyText"
  f.creditor_id 1
  f.debitor_id 1
  f.date "2010-02-26"
  f.status "MyString"
end
