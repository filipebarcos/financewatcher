Financewatcher::Application.routes.draw do
  root :to => "feeds#index"
  
  controller :feeds do
    get "/feeds/industry/:tickers", :action => :get_industry, :defaults => { :format => 'xml' }
    get "/feeds/company/:tickers", :action => :get_company, :defaults => { :format => 'xml' }
  end
  
  controller :users do
    get "/signup", :action => :new
    post "/signup", :action => :create, :as => false
    get "/users/:id", :action => :destroy
  end
  
  controller :logins do
    get "/login", :action => :new
    post "/login", :action => :create, :as => false
    get "/logout", :action => :destroy
  end
end
