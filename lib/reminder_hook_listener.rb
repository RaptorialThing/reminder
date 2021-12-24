class PoolsHookListener < Redmine::Hook::ViewListener
    def popup_message_show(context={})
        return content_tag("div", "Нет ни одной задачи в процессе")
    end
end
