SweetRails::Application.routes.draw do
  resources :categories, :only => [:index, :show] do
    resources :articles, :only => [:index, :show]
  end
  match "/articles/:month/:day/:year/:title" => "articles#yeabuddy"
end
