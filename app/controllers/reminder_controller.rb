class ReminderController < ApplicationController
  unloadable
  before_action :reminder_filter
 

  def index
    @reminders = [Reminder.find_by(user_id: User.current.id)]
  end

  def new
    @reminder = Reminder.new
  end  


  def edit
    @reminder = Reminder.find(params[:id])
    render :edit
  end  
  
  def update
    @reminder = Reminder.find(params[:id])
    
    no_in_progress_task = params[:no_in_progress_task].to_i == 1 ? true : false
    if @reminder.update(no_in_progress_task: no_in_progress_task,user_id: User.current.id)
        flash[:notice] = "Ок. Настройки сохранены"
    else
        flash[:alert] = "Ошибка. Настройки не сохранены"
    end
    @reminders = [@reminder]
    render :index
  end


  def create
    @reminder = Reminder.create()

    if @reminder
        flash[:notice] = "Ок. Напоминание создано"
        render :index
    else
        flash[:alert] = "Ошибка. Напоминание не создано"
    end
  end
  

  private
  def reminder_filter
    unless params[:project_id].nil? then 
    @project = Project.find(params[:project_id])
    end
  end
end
