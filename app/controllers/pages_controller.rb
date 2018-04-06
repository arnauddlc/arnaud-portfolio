class PagesController < ApplicationController
  def home
  	@active_tab = "HOME"
  	get_meta_data
  end

  private

  def get_meta_data

  	cache = ActiveSupport::Cache.lookup_store(:file_store, '/tmp/cache')

    @page_woolworths = MetaInspector.new('https://www.woolworthsgroup.com.au', :connection_timeout => 10, :read_timeout => 5, :retries => 2, faraday_http_cache: { store: cache })
   	@page_pernodricard = MetaInspector.new('https://havana-club.com/en-ww/', :connection_timeout => 10, :read_timeout => 5, :retries => 2, faraday_http_cache: { store: cache })
   	@page_sbc = MetaInspector.new('https://www.slb.com', :connection_timeout => 10, :read_timeout => 5, :retries => 2, faraday_http_cache: { store: cache })
  end
end
