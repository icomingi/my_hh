class DemandController < ApplicationController
  def index
	@demands = Demand.all
  end

  def new
	# @demand = Demand.new
  end

  def edit
	@dr = Demand.find(params[:id]).demand_route
  end
  
  def create
	@demand = Demand.new
	dr = DemandRoute.new(params[:demand_route])
	origin = geocode(params[:demand_route][:origin])
	if origin
		dr.origin_lat = origin['lat']
		dr.origin_long = origin['lng']
	end
	dest = geocode(params[:demand_route][:dest])
	if dest
		dr.dest_lat = dest['lat']
		dr.dest_long = dest['lng']
	end
	dr.save
	@demand.demand_route = dr
	@demand.person = Person.all.first
	@demand.save
	redirect_to :action => :index
  end
  
  def update
	@dr = DemandRoute.find(params[:id])
	@dr.update_attributes(params[:demand_route])
	origin = geocode(@dr[:origin])
	if origin
		@dr.origin_lat = origin['lat']
		@dr.origin_long = origin['lng']
	end
	dest = geocode(@dr[:dest])
	if dest
		@dr.dest_lat = dest['lat']
		@dr.dest_long = dest['lng']
	end
	@dr.save
	redirect_to :action => :index
  end
  
  def show
	require 'date'
	s = render_to_string(:action => :new)
	render(:text => s)
  end
  
  def geocode(address, ak="84dec3df847ba10408cf1c4acd4cebf4", output='json')
	require 'json'
	require 'uri'
	require 'net/http'
	# BAIDU_MAP_API_BASE = "http://api.map.baidu.com/geocoder/v2/?"
	baidu = "http://api.map.baidu.com/geocoder/v2/?"
	# Build URL		
	url = baidu + "address=#{address}&output=#{output}&ak=#{ak}"
	# Open connection and get response
	begin
		response = JSON.load(Net::HTTP.get_response(URI.parse(URI.escape(url))).body)
		if response['status'] == 0 and response['result'].any?
			return response['result']['location']
		else
			return false
		end
	rescue
		return false
	end
  end
end
