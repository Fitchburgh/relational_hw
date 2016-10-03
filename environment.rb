require 'pg'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql', # or 'mysql2' or 'sqlite3'
  host:     'localhost',
  database: 'game',
  username: 'Fitchburgh',
  password: ''
)
