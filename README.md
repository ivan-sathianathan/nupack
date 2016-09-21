# Nupack

This is my solution to the Nupack Pricing Calculator problem.

# Usage

To run this project, run the following steps:

1. Clone this repo
2. Run `bundle`
3. Open `irb` or a REPL of your choice
4. `require './lib/final_price_calculator'`
5. Instantiate the various markup calculator and then the final price calculator

  ```
  2.2.3 :005 > flat = FlatMarkupCalculator.new
   => #<FlatMarkupCalculator:0x007fcabba9b590>
  2.2.3 :006 > people = PeopleMarkupCalculator.new
   => #<PeopleMarkupCalculator:0x007fcabbaa3560>
  2.2.3 :007 > type = TypeMarkupCalculator.new
   => #<TypeMarkupCalculator:0x007fcabbab3730>
  2.2.3 :008 > final = FinalPriceCalculator.new(flat, people, type)
   => #<FinalPriceCalculator:0x007fcabbab9590 @flat_markup_calculator=#<FlatMarkupCalculator:0x007fcabbab9568>, @people_markup_calculator=#<PeopleMarkupCalculator:0x007fcabbab9540>, @type_markup_calculator=#<TypeMarkupCalculator:0x007fcabbab9518>>
  ```

6. Use the `total_cost` method to calculate final price of project based on various variables

  ```
  2.2.3 :010 > final.total_cost(1299.99,3,:food)
    => 1591.58
  2.2.3 :011 > final.total_cost(5432,1,:drugs)
    => 6199.81
  2.2.3 :012 > final.total_cost(12456.95,4,:books)
    => 13707.63
  ```
More documentation on the behaviour of each class and their methods can be found by running `rspec`

  ```
  FinalPriceCalculator
    #final_price
      returns final price after all markups (example 1)
      returns final price after all markups (example 2)
      returns final price after all markups (example 3)

  FlatMarkupCalculator
    #markup
      returns markup after flat markup of 5% is applied

  PeopleMarkupCalculator
    #markup
      returns markup after 1.2% per person markup is applied

  TypeMarkupCalculator
    #markup
      returns markup after type markup is applied
      does not apply a markup when there is no type match
  ```
