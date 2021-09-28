# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

images = [
    [ "IMG_1340.JPG", "Falls, Montreal" ],
    [ "bojack.webp", "A horse with a midlife crisis, Los Angeles" ],
    [ "bubble_tea.jpg", "#1 bubble tea, Toronto" ],
    [ "happiness_inn.JPG", "Happiness Inn, Niagara" ],
    [ "npc.JPG", "Don't be a NPC. Own your future" ],
    [ "taj_mahal.jpg", "The Taj Mahal, Delhi"] 
]

images.each do |file_name, caption|
    Image.create( file_name: file_name, caption: caption)
end