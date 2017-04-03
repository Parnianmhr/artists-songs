Photo.delete_all
Song.delete_all
Artist.delete_all

photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/dgf0jyrou/image/upload/v1485599511/i9fgfocxo3sidpujvknu.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dgf0jyrou/image/upload/v1485464598/nxlecjhaj9kezczvlv5j.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dgf0jyrou/image/upload/v1485599515/tlbmb6rsrbygoudwhfie.jpg")
photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/dgf0jyrou/image/upload/v1485599516/nxtxv3nsfsfeidkdgm2g.jpg")
photo5 = Photo.create(remote_image_url: "")
photo6 = Photo.create(remote_image_url: "")
photo7 = Photo.create(remote_image_url: "")
photo8 = Photo.create(remote_image_url: "")

song1  = Song.create( { name: "Time is running out", year: 2003, time: 3.56, album: "album 1" } )
song2  = Song.create( { name: "Survival",            year: 2012, time: 4.17, album: "album 2" } )
song3  = Song.create( { name: "Invincible",          year: 2006, time: 5.00, album: "album 3" } )
song4  = Song.create( { name: "Hey you",             year: 1979, time: 4.40, album: "album 4" } )
song5  = Song.create( { name: "Outside the wall",    year: 1979, time: 1.40, album: "album 5" } )
song6  = Song.create( { name: "All I need",          year: 2007, time: 3.49, album: "album 6" } )
song7  = Song.create( { name: "House of cards",      year: 2007, time: 5.28, album: "album 7" } )
song8  = Song.create( { name: "Lucky",               year: 1997, time: 4.19, album: "album 8" } )
song9  = Song.create( { name: "Gone",                year: 2006, time: 4.09, album: "album 9" } )
song10 = Song.create( { name: "Big wave",            year: 2006, time: 2.58, album: "album 10" } )


artist1 = Artist.create( { name: "Matt Bellamy", age: 45, photos: [photo1, photo7], band: "Muse" } )
artist2 = Artist.create( { name: "Thom York", age: 46, photos: [photo2, photo5] , band: "Radiohead" } )
artist3 = Artist.create( { name: "Roger Waters", age: 47, photos: [photo3, photo6], band: "Pink Floyd" } )
artist4 = Artist.create( { name: "Eddie Vedder", age: 48, band: "Pearl Jam", photos: [photo4, photo8] } )

artist1.songs << [song1, song2, song3]
artist1.save

artist2.songs << [song6, song7, song8]
artist2.save

artist3.songs << [song4, song5]
artist3.save

artist4.songs << [song9, song10]
artist4.save
