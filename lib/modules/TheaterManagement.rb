module TheaterManagement
	class VideoScheduleManagement
		def next_week_schedule
			video_schedule = VideoSchedule.new 
			video_schedule.get_next_week_videos
		end
	end

	class VistorTicketManagement
		def buy_ticket(user_id, schedule_id)
			
			if(get_total_available_seats(schedule_id) > 0)
				visitor_ticket = VisitorTicket.new
				visitor_ticket.add_ticket_to_visitor(user_id, schedule_id)
			end
			
		end

		def get_total_available_seats(schedule_id)
			schedule = VideoSchedule.includes(:theater_hall).find(schedule_id)
			schedule.theater.total_seats - total_bought_tickets_for_schedule(schedule_id)
		end

		def total_bought_tickets_for_schedule(schedule_id)
			VisitorTicket.where("video_schedule_id = ?", schedule_id).count
		end

		def validate_ticket(bar_code_str)
			VisitorTicket.where(bar_code: bar_code_str).count > 0
		end
	end
end