SELECT * FROM Attribution(
  ON {input_table | view | query}
  PARTITION BY user_id
  ORDER BY time_stamp
  [ON {input_table_n | view_n | query_n}
  PARTITION BY user_id
  ORDER BY time_stamp [...]]
  ON conversion_event_table AS conversion DIMENSION
  ON excluding_event_table AS excluding DIMENSION
  ON optional_event_table AS optional DIMENSION
  ON model1_table AS model1 DIMENSION
  ON model2_table AS model2 DIMENSION
  EVENT_COLUMN_NAME('event_column')
  TIMESTAMP_COLUMN_NAME('timestamp_column')
  WINDOW('rows:K | second:K | rows:K&seconds:K2')
)ORDER BY user_id, time_stamp;
