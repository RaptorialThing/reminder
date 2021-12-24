class Reminder < ActiveRecord::Base


  def self.check_no_task_in_progress
    issues = Issue.where(author_id: User.current.id, status_id: 2)
    reminder = Reminder.find_by(user_id: User.current.id)
    if issues.empty? and reminder.no_in_progress_task
    status = true
    else
    status = false
    end
    
    return status  
  end
end
