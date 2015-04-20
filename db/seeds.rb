# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Now adding seed data for the database...'
puts ''

print 'Progress:'
ht1 = HomeTeachee.create(first_name: 'Mike', last_name: 'Vezzani')
ht1.create_contact_info(email: 'foo@bar.com', phone1: '777-8888', phone2: '888-9999')
ht1.contact_info.create_address(street_number: '7 foobar way', city: 'foo', state: 'bar', zipcode: '77788')
ht1.histories.create(visit_summary: 'It went really well. Foobar responded very well to our message we left with him.')
ht1.issues.create(title: 'Needs help', description: 'He just bought a new exhaust header for his car and needs a hand installing it.')
print '.'

ht2 = HomeTeachee.create(first_name: 'Foo', last_name: 'Bar')
ht2.create_contact_info(email: 'bar@foo.com', phone1: '666-7777', phone2: '444-5555')
ht2.contact_info.create_address(street_number: '8 barfoo way', city: 'bar', state: 'foo', zipcode: '55666')
ht2.histories.create(visit_summary: 'It was just an ok visit. Barfoo didnt seem very intetested in what we were saying, so we just left the message and left.')
ht2.issues.create(title: 'Disengaged from church', description: 'Overall Barfoo doesnt seem engaged in our visits and really doesnt want to attend church. Unsure of where to go from here.')
print '.'

puts '...All done!'
