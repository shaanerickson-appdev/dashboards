Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/", :controller => "application", :action => "dash")
  get("/forex", :controller => "currency", :action => "list_one")
  get("/forex/:start", :controller => "currency", :action => "list_two")
  get("/forex/:start/:end", :controller => "currency", :action => "convert")
end
