require 'JSON'
require 'URI'
require 'NET/HTTP'

module geocoding
	BAIDU_MAP_API_BASE = "http://api.map.baidu.com/geocoder/v2/?"

	def geocode(address, ak="84dec3df847ba10408cf1c4acd4cebf4", output='json')
		# Build URL
		# url = URI::HTTP.new('http', nil, "api.map.baidu.com", nil, "/geocoder", "address=#{address}&output=#{output}&key=#{key}", nil)
		url = BAIDU_MAP_API_BASE + "address=#{address}&output=#{output}&ak=#{ak}"
		# Open connection and get response
		response = JSON.load(Net::HTTP.get_response(URI.parse(URI.escape(url))).body)
		begin
			if response['status'] == 0
				return response['result']['location']
			else
				puts "Geocoding unsuccessful."
			end
		rescue
			puts "Connection error."
		end
	end
end