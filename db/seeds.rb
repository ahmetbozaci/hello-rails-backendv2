# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Greeting.destroy_all
ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end
Greeting.create([
  {title:"Hello"},
  {title:"What's up"},
  {title:"It's good to see you again"},
  {title:"How's it going?"},
  {title:"How have you been"}
  ])