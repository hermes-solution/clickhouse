-- create database and table
CREATE DATABASE IF NOT EXISTS hermes;

CREATE TABLE IF NOT EXISTS hermes.logs
(
  id             Int64,
  tag            String,
  timestamp      Int64,
  date           FixedString(8),
  container_name String,
  level          String,
  message        String,
  context Nested(
    key String,
    value String
    )
) ENGINE = MergeTree()
    PARTITION BY (tag, date)
    ORDER BY (tag, timestamp);