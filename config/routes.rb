Rails.application.routes.draw do
  
  resources :presentations
  resources :presentation_blocks
  get 'course/create'
  get 'course/register'
  get 'users/course_search'

  root                       'static_pages#home'
  get    'help'           => 'static_pages#help'
  get    'about'          => 'static_pages#about'
  get    'contact'        => 'static_pages#contact'
  get    'added_course'   => 'static_pages#added_course'
  get    'signup'         => 'users#new'
  get    'login'          => 'sessions#new'
  post   'login'          => 'sessions#create'
  delete 'logout'         => 'sessions#destroy'
  
  get    'view'           => 'users#view'
  get    'classes'        => 'users#classes'
  get    'create_choices' => 'users#create_choices'
  get    'feedback'       => 'users#feedback'
  get    'forms_feedback' => 'users#forms_feedback'
  get    'course_search'  => 'users#course_search'
  get    'course_search'  => 'users#add_course'
  
  get    'c_show'         => 'courses#show'
  get    'c_new'          => 'courses#new'
  get    'c_edit'         => 'courses#edit'
  get    'c_index'        => 'courses#index'
  
  get    'pb_show'         => 'presentation_blocks#show'
  get    'pb_new'          => 'presentation_blocks#new'
  get    'pb_edit'         => 'presentation_blocks#edit'
  get    'pb_index'        => 'presentation_blocks#index'
  
  get    'p_show'         => 'presentations#show'
  get    'p_new'          => 'presentations#new'
  get    'p_edit'         => 'presentations#edit'
  get    'p_index'        => 'presentations#index'
  
  get    'f_new'          => 'rapidfire/question_groups#new'
  get    'f_index'        => 'rapidfire/question_groups#index'
  get    'f_results'      => 'rapidfire/question_groups#results'
  
  get    'sic_new'        => 'student_in_courses#new'
  
  resources :users
  resources :courses
  resources :student_in_courses
  
  mount Rapidfire::Engine => "/rapidfire"
end
