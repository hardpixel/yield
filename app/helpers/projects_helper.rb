module ProjectsHelper
	# Check if project member
	def project_member?(project, user)
		if project.member_ids.include?(user.id)
			return true
		end

		return false
	end

	# Get project complete ratio
	def project_complete_ratio(project)
		total = 0

		unless project.tasks.empty?
			tasks = project.tasks.count
			ratio = project.tasks.sum(:completed)
			total = ratio / tasks
		end

		return total
	end
end
