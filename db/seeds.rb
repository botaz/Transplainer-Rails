include Faker

Person.delete_all

1000.times do
  Person.create!(
    :first_name => Name.first_name,
    :last_name  => Name.last_name,
    :profile    => Lorem.paragraphs.join(" "),
    :post_code  => Address.zip_code,
    :address    => Address.street_address,
    :city       => Address.city,
    :state      => Address.us_state,
    :country    => "United States of America"
  )

  print "."
end
