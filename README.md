# Codaisseurify

Codaisseurify was a homework assignment during the Codaisseur Academy. There were a few requirements:
  * Use Postgesql as a databse
  * When generating the rails app don't install any testing framework
  * Make two models, Artist and Song. Have a one-to-many relationship between them.
  * And more requirements for the views. Like pictures for the artists.

__NOTE:__ This was build during the Academy. If I would build it again, I would do it differently. Also the finishing touches were skipped due to the small amount of time available. 

[![](https://github.com/Woulei/codaisseurify/blob/master/app/assets/images/screenshots/Screen%20Shot%202017-05-05%20at%2010.50.41.png?raw=true)](https://github.com/Woulei/codaisseurify/blob/master/app/assets/images/screenshots/Screen%20Shot%202017-05-05%20at%2010.50.41.png?raw=true)

[![](https://github.com/Woulei/codaisseurify/blob/master/app/assets/images/screenshots/Screen%20Shot%202017-05-05%20at%2010.51.10.png?raw=true)](https://github.com/Woulei/codaisseurify/blob/master/app/assets/images/screenshots/Screen%20Shot%202017-05-05%20at%2010.51.10.png?raw=true)

## Database Structure
  * Artists
    * name:string
    * describtion:string
    * country:string
  * Songs
    * name:string
    * album:string
    * release_date:date
    * artist_id:references
  * Photos
    * image:string (contains the url)
    * artist_id:references

## Running Locally
  Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.
  Also, you will need to have a [Postgresql](https://www.postgresql.org/) server running.
  
  1. `git clone git@github.com:Woulei/codaisseurify.git`
  2. `cd codaisseurify`
  3. `bundle install`
  4. `rails db:create db:migrate db:seed`
  5. `rails server`
  
## Related Documentation
  * [Codaisseur Reader - Codaisseurify I](https://reader.codaisseur.com/courses/intermediate-bootcamp-1d45fcf7-b918-482f-a526-e126d3c063d9/60/codaisseurify-ii/)
  * [Codaisseur Reader - Codaisseurify II (never given as homework)](https://reader.codaisseur.com/courses/intermediate-bootcamp-1d45fcf7-b918-482f-a526-e126d3c063d9/65/codaisseurify-iii)
  * [Ruby on Rails](http://rubyonrails.org/)
  * [CarrierWave](https://github.com/carrierwaveuploader/carrierwave)
  * [Cloudinary](http://cloudinary.com/documentation/rails_integration#getting_started_guide)
