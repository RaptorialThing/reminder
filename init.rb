Redmine::Plugin.register :reminder do
  name 'Reminder plugin'
  author 'RaptorialThing'
  description 'This is a plugin to reminde :) '
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'https://t.me/RaptorialThing'

  permission :view_reminder, :reminder => :index
  permission :edit_reminder, :reminder => :edit
  permission :update_reminder, :reminder => :update
  menu :project_menu, :reminder, {:controller => 'reminder', :action => 'index'}, :caption => "Reminder", :after => :calendar, :param => :project_id

  project_module :reminder do
    permission :view_reminder, :reminder => :index
    permission :edit_reminder, :reminder => :edit
    permission :update_reminder, :reminder => :update
  end


  require_dependency 'reminder_hook_listener'
end
