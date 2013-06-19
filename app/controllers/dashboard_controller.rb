class DashboardController < ApplicationController
  def index
  end

  def show_supply
	
  end

  def show_demand
	@demands = Demand.all
  end

  def search
  end
end
