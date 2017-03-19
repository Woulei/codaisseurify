# Delete all the records
Song.delete_all
Artist.delete_all
puts "All records deleted.."

# Create new artists
afrojack = Artist.create!(name: "Afrojack", describtion: "Nick van de Wal, aka Afrojack, joined Tiestö and Armin van Buuren in the line of globetrotting DJs, producers and remixers to come out of the burgeoning Dutch dance music scene.", country: "Netherlands")
avicii = Artist.create!(name: "Avicii", describtion: "Cleverly using dance music blogs as the platform to launch his career, Tim Bergling, aka Avicii, has since become one of the most prominent producers ont he burgeoning Swedish house scene. Born in Stockholm in 1989, Bergling only started making music at the age of 18, writing and remixing tracks in his bedroom and then leaking them onto various blogs.", country: "Sweden")
garrix = Artist.create!(name: "Martin Garrix", describtion: "Part of the explosion of Dutch EDM DJs who emerged during the 2012-2013 season, Matrin Garrix kicked off his career in a high-profile way, first landing on the dance charts with his 2012 remix of Christina Aguilera's \"Your Body\".", country: "Netherlands")
puts "Artists created.."

# Create new songs for Afrojack
Song.create!(name: "Ten Feet Tall", album: "Forget the World", release_date: Date.parse("03/02/2014"), artist: afrojack)
Song.create!(name: "The Spark", album: "Forget the World", release_date: Date.parse("11/10/2013"), artist: afrojack)
Song.create!(name: "Hey Brother", album: "True", release_date: Date.parse("28/10/2013"), artist: avicii)
Song.create!(name: "Scared to Be Lonely", album: "Scared to Be Lonely", release_date: Date.parse("27/01/2017"), artist: garrix)
