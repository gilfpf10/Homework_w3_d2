DROP TABLE IF EXISTS properties;
CREATE TABLE properties(

  id SERIAL4 PRIMARY KEY,
  address VARCHAR(255),
  value INT4,
  bedrooms INT4,
  year_built INT4,
  status VARCHAR(255),
  square_footage INT4,
  build VARCHAR(255)
);
