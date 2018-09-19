require("pry")
require_relative("./models/properties.rb")

house1 = Property.new({
  "address" => " 65 Pit Street",
  "value" => 120000,
  "bedrooms" => 2,
  "year_built" => 1995,
  "status" => "buy",
  "square_footage" => 200,
  "build" => "flat"
  })
  house1.save

  house2 = Property.new({
    "address" => "64 Miller Street",
    "value" => 130000,
    "bedrooms" => 3,
    "year_built" => 1996,
    "status" => "buy",
    "square_footage" => 300,
    "build" => "Detached"
    })
    house2.save

    house3 = Property.new({
      "address" => "63 Monk Street",
      "value" => 140000,
      "bedrooms" => 4,
      "year_built" => 1997,
      "status" => "let",
      "square_footage" => 500,
      "build" => "flat"
      })
      house3.save

      house4 = Property.new({
        "address" => "62 Tall Street",
        "value" => 150000,
        "bedrooms" => 2,
        "year_built" => 1998,
        "status" => "buy",
        "square_footage" => 300,
        "build" =>"house"
        })
        house4.save

        houses = Property.all()
        house1.build = "House"
        house1.update()
        Property.delete_all()




        binding.pry
        nil
