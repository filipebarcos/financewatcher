class FeedsController < ApplicationController
  
  def index
  end
  
  def get_industry
    render :xml => YahooIndustryFeed.fetch(params[:tickers])    
  end
  
  def get_company
    render :xml => YahooCompanyFeed.fetch(params[:tickers])
  end
  
end