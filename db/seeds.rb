# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.create title: 'First Article', content: 'This is the first article content'
Article.create title: 'Second Article', content: 'This is the second article content'

Vision.create caption: 'First Vision', content: 'This is the first vision content'
Vision.create caption: 'Second Vision', content: 'This is the second vision content'

Image.create caption: 'Lulz Image', image_id: 'https://placehold.it/120x120'
Image.create caption: 'Lol Image', image_id: 'https://placehold.it/120x120'
