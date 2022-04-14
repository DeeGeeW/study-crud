# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Comment.create!([
  {user_id: 1, comment: "I saw a bald eagle at stoney point in hardin valley, this park is located in East Tn", state: "TN", bird_name: "Bald Eagle", image: "Eagle practice.jpeg", chirp: ""}
])