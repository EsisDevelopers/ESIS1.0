ESIS10::Application.routes.draw do
  
  get "home/quienes_somos",:as => "somos"
  get "home/investigacion",:as => "invest"
<<<<<<< HEAD
  get "home/tramites",:as => "tramit"
  resources :alternativas
=======
   get "home/tramites",:as => "tramit"
     get "home/encuesta_alumno",:as => "encuesta_alumno"
>>>>>>> 8b01fdbf464af4c53b1e90a55b604cd97668c2de
  
  
  namespace :admins do
    root :to => "dashboard#index"
    #get "dashboard/index"
  end
  
  namespace :academico do
    root :to => "secciones#index"
    resources :secciones
    resources :encuestas
  end
  
  
  namespace :estudiante do
    resources :encuestas
    resources :secciones
  end
  
  
  
  
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  #devise_for :admins, :controllers => {:sessions => "admin/sesiones" }
  resources :users do
    member do
      resource :estudiante
    end 
  end
end
