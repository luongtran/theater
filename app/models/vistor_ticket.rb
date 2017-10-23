class VistorTicket < ApplicationRecord


	belongs_to :user
	
	def add_ticket_to_visitor(user_id, schedule_id)
		visitor_ticket = VistorTicket.new(user_id: user_id, schedule_id: schedule_id, barcode: generate_bar_code)
		visitor_ticket.save
	end

	private 
		def generate_bar_code
			schedule = VideoSchedule.find(schedule_id)
			"#{user_id}#{schedule_id}#{schedule.start.to_i}"
		end
end
