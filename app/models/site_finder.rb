require 'uri'

# Either find a site based on hostname, or create one when none can be found.
class SiteFinder

	def initialize(event_params, referer, customer)
		@event_params = event_params
		@referer = referer
		@customer = customer
	end

	def create

		@site = @customer.sites.find_or_create_by(hostname: hostname)
		
		#if @customer.sites.where(hostname: hostname).empty? # [] [<Site>, ..]
			#@site = @customer.sites.create hostname: hostname
		#else
			#@site = @customer.sites.where(hostname: hostname).first
		#end

		@event = @site.events.create
	end

	private
	def hostname
		# parse @referer header and strip out hostname
		uri = URI(@referer)
		uri.host
	end

end