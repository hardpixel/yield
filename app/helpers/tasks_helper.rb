module TasksHelper
	# Check if task assignee
	def task_assignee?(task, user)
		if task.user_id == user.id
			return true
		end

		return false
	end

	# Get task schedule status
	def task_schedule_status(task)
		status = []
	end
end
