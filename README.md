# RubyGarage Library Task

## Main Idea
### There are 5 classes which are related with each other:
1. **Author:**
    * _name_ - full author's name
    * _biography_

2. **Book:**
    * _title_
    * _author_

3. **Reader:**
    * _name_ - full reader's name
    * _email_
    * _city_
    * _street_
    * _house_ - building number

4. **Order:**
    * _book_ - Book instance
    * _reader_ - Reader instance
    * _date_ - by default - Time.now

5. **Library:**

   Stores the collections of instances of classes, described above.
   By default they are empty arrays.
    * authors
    * books
    * orders
    * readers

### And some methods which allow you get some statistics about the whole Library and do some manipulations with it:
1. Write and Read to/from .yaml file.
2. Generate seeds for Library.
3. Get most popular book and reader.
4. Get the amount of people who ordered one of the three most popular books.

## Dependencies
There is only two dependencies:
  * gem [Faker](https://rubygems.org/gems/faker "Faker on RubyGems") to generate seeds
  * ruby 2.4.0
