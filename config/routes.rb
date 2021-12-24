# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'reminder', :to => 'reminder#index'
post 'reminder/:id/update', :to => 'reminder#update', as: "reminder_update"
get 'reminder/new', :to => 'reminder#new'
get 'reminder/:id/edit', :to => 'reminder#edit', as: "reminder_edit"
post 'reminder/create', :to => 'reminder#create'
