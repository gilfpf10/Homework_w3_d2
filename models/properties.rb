require("pg")
class Property

  attr_accessor :address, :value, :bedrooms, :year_built, :status, :square_footage, :build

  attr_reader :id

  def initialize(options)

    @id = options["id"].to_i if options ["id"]
    @address = options ["address"]
    @value = options ["value"].to_i
    @bedrooms = options ["bedrooms"].to_i
    @year_built = options ["year_built"].to_i
    @status = options ["status"]
    @square_footage = options ["square_footage"].to_i
    @build = options ["build"]
  end
  #create
  def save()

    db = PG.connect({dbname: "property_tracker", host: "localhost"})

    sql = "INSERT INTO properties
    (address, value, bedrooms, year_built, status, square_footage, build)
    VALUES
    ($1, $2, $3, $4, $5, $6, $7)
    RETURNING *"

    values = [@address, @value, @bedrooms, @year_built, @status, @square_footage, @build]

    db.prepare("save", sql)
    db.exec_prepared("save",values)
    db.close
  end
  #read
  def Property.all()
    db = PG.connect({dbname: "property_tracker", host: "localhost" })
    sql = "SELECT * FROM properties"
    db.prepare("all", sql)
    properties = db.exec_prepared("all")
    db.close()
    return properties.map {|house_hash| Property.new(house_hash)}
  end
  #update
  def update()
    db = PG.connect({dbname: "property_tracker", host: "localhost"})
    sql = "UPDATE properties SET
    (address, value, bedrooms, year_built, status,square_footage, build)=
    ($1, $2, $3, $4, $5, $6, $7)
    WHERE id = $8"
    values = [@address, @value, @bedrooms, @year_built, @status, @square_footage, @build, @id]

    db.prepare("house1_update", sql)
    db.exec_prepared("house1_update",values)
    db.close()
  end
#delete
  def Property.delete_all()

    db = PG.connect({dbname: "property_tracker", host: "localhost"})
    sql = "DELETE FROM properties"
    db.prepare("delete_all", sql)
    db.exec_prepared("delete_all")
    db.close
  end
def


end
