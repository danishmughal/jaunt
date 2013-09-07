class Trip < ActiveRecord::Base

	before_create :set_slug

	has_many :tripitems

	def set_slug
		require 'uuidtools'
		require 'base64'
		self.slug = Base64.encode64(UUIDTools::UUID.random_create)[0..8]
	end

end
