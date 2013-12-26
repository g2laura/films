class Movie < ActiveRecord::Base
	has_many :kinds
	has_many :people
end
