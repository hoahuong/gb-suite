class Home
	SQL_ACCOUNTANT = "SELECT 
	assignments.user_id,
	CONCAT(assignments.first_name, ' ' , assignments.last_name) full_name,
	COUNT(assignments.user_id) AS assign_number, 
	COUNT(timesheets.user_id) AS timesheet_count
FROM 
(
	SELECT 
	assignments.user_id, 
	users.first_name,
	users.last_name,
	project_id
	FROM 
	assignments, 
	m_projects, 
	users
	WHERE 
	(assignments.active IS NULL OR assignments.active <> 'I')
	AND (m_projects.active IS NULL OR m_projects.active <> 'I')
	AND m_projects.status = 1
	AND assignments.project_id = m_projects.id
	AND users.id = assignments.user_id
	AND m_projects.company_id = p_company_id
)assignments
LEFT JOIN 
(
	SELECT 
		timesheets.user_id, 
		timesheets.project_id
	FROM 
	timesheets
	WHERE
	timesheets.active IS NULL OR timesheets.active <> 'I'
)timesheets ON assignments.user_id = timesheets.user_id
GROUP BY assignments.user_id"
	
		SQL_APPROVE_LIST = "SELECT 
		m_projects.id, 
		m_projects.name
	FROM 
	assignments, 
	m_projects
	WHERE  
	(m_projects.active IS NULL OR m_projects.active <> 'I')
	AND (assignments.active IS NULL OR assignments.active <> 'I')
	AND assignments.is_approver = TRUE
	AND m_projects.id = assignments.project_id
	AND assignments.user_id = p_user_id"



		SQL_INPUT = "SELECT 
					m_projects.id, 
					m_projects.name
				FROM 
				assignments, 
				m_projects
				WHERE  
				(m_projects.active IS NULL OR m_projects.active <> 'I')
				AND (assignments.active IS NULL OR assignments.active <> 'I')
				AND (assignments.is_approver = FALSE OR assignments.is_approver IS NULL)
				AND m_projects.id = assignments.project_id
				AND assignments.user_id = p_user_id"

	
	def self.get_approve_list_4_account(page, company_id)
		User.paginate_by_sql(SQL_ACCOUNTANT.gsub("p_company_id", company_id.to_s), :page => page, :per_page => 200)
	end

	def self.get_approve_list_4_manager(page, user_id)
		User.paginate_by_sql(SQL_APPROVE_LIST.gsub("p_user_id", user_id.to_s), :page => page, :per_page => 200)
	end

	def self.get_input_project(page, user_id)
		User.paginate_by_sql(SQL_INPUT.gsub("p_user_id", user_id.to_s), :page => page, :per_page => 200)
	end
end
