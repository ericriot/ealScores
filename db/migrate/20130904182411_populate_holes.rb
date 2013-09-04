class PopulateHoles < ActiveRecord::Migration
  def up
  	18.times do |i|
  		# these loops start i at 0 but we want 1 so add it
  		Hole.create!({:id => i + 1, :number => i + 1})
  	end
  end
end
