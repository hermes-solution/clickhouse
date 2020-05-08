
-- create database and table
CREATE DATABASE IF NOT EXISTS hermes;

CREATE TABLE IF NOT EXISTS hermes.logs (
  application String,
  timestamp Int64,
  date FixedString(8),
  container_name String,
  container_id String,
  message String
)
ENGINE = MergeTree()
PARTITION BY (application, date)
ORDER BY (application, timestamp);