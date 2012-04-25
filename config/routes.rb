Financewatcher::Application.routes.draw do
  root :to => "feeds#index"
  
  controller :feeds do
    get "/feeds/industry/:tickers", :action => :get_industry, :defaults => { :format => 'xml' }
    get "/feeds/company/:tickers", :action => :get_company, :defaults => { :format => 'xml' }
  end
end
