class Team < ActiveRecord::Base
	has_many :home_matches, :foreign_key => :home_team_id, :class_name => :matches
  has_many :away_matches, :foreign_key => :away_team_id, :class_name => :matches
  validates :name, presence: true, uniqueness: true
end
