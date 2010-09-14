Transplainer::Application.routes.draw do
  resources :people, :constraints => { :format => /[a-z]+(\.[a-z]+)?/ }
end
