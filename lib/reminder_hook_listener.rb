class PoolsHookListener < Redmine::Hook::ViewListener
    def popup_message_show(context={})
        if Reminder.check_no_task_in_progress
        return content_tag("div", "Нет ни одной задачи в процессе")
        end
    end
end
