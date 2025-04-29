CREATE TABLE placed_order (
  id INTEGER,
  restaurant_id INTEGER,
  order_time timestamp,
  estimated_delivery_time timestamp,
  food_ready timestamp,
  actual_delivery_time timestamp,
  delivery_address varchar(255),
  customer_id integer,
  price decimal(12,2),
  discount decimal(12,2),
  final_price decimal(12,2),
  comment varchar(255),
  discount timestamp,
  PRIMARY KEY(id)
)
