Factory.sequence :email do |n|
  "user_#{n}@example.com"
end

Factory.define(:user) do |u|
  u.email { Factory.next :email }
  u.password "whatchamacallit"
  u.password_confirmation { |user| user.password }
end