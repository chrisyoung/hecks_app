require "active_record"
require_relative 'sql/matches_ar'
require_relative 'sql/teams_ar'
require_relative 'sql/matches/match'
require_relative 'sql/teams/team'
require_relative 'sql/matches/match/repository'
require_relative 'sql/teams/team/repository'
require_relative 'sql/migrate.rb'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: "soccer_season_db"
CreateDatabase.new.up
