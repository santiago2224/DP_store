Rails.application.routes.draw do
  root "departments#index"
  get "/departments", to: "departments#index"
  get "/departments/:id", to: "departments#show"


  
  get "departments/:department_id/foods/new", to: "foods#new"
  get "departments/:department_id/foods/:id/edit", to: "foods#edit"


  
  post "/departments/:department_id/foods", to: "foods#create"
  patch "/departments/:department_id/foods/:id", to: "foods#update"

  
  get "/allFoods", to: "departments#allFoods"
  
 
end


