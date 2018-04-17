class PagesController < ApplicationController
  def home
  	@active_tab = "HOME"
  	cache = ActiveSupport::Cache.lookup_store(:file_store, '/tmp/cache')
  end
end
