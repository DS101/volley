class Team < ActiveRecord::Base
	has_many :home_matches, :foreign_key => :home_team_id, :class_name => :matches
  has_many :away_matches, :foreign_key => :away_team_id, :class_name => :matches
  validates :name, presence: true, uniqueness: true

  public
 		def matches
 			arr = Array.new 			
   		Match.where(:home_team_id => id).find_each do |m|
   			arr << m
   		end
   		Match.where(:away_team_id => id).find_each do |m|
   			arr << m
   		end
   		return arr
 		end
end
