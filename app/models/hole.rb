class Hole < ActiveRecord::Base
	
	validates_uniqueness_of :number
	validates_presence_of :number
	
	# the image tag has our id and some number formatting, move it to the model
	def image()
		ActionController::Base.helpers.image_tag("holes/Hunter_H%02d" % self.number + ".jpg" \
			, :alt => 'Hole ' % self.number \
			, :class => 'holeImage'
			)
	end

end
