module PeopleHelper
	def driving_time(license_date)
		require 'date'
		today = Date.today
		# assert today >= license_date
		delta = (today - license_date).to_int()
		# if delta > 0
			# return "#{round_year(delta)} #{round_month(delta%365)}"
		# else	
			# return "fresh new"
		# end
		delta > 0 ? "#{round_year(delta)} #{round_month(delta%365)}" : "fresh new"
	end
	
	def round_year(days)
		# if days/365 > 0
			# return "#{pluralize(days/365, "year")} and "
		# else
			# return ""
		# end
		days / 365 > 0 ? "#{pluralize(days/365, "year")} and " : ""
	end
	
	def round_month(remaining_days)
		# if remaining_days/30 > 0
			# return "#{pluralize(remaining_days/30, "month")}"
		# else
			# return "#{pluralize(remaining_days, "day")}"
		# end
		remaining_days / 30 > 0 ? "#{pluralize(remaining_days/30, "month")}" : "#{pluralize(remaining_days, "day")}"
	end
end
