class PagesController < ApplicationController
  def home
  	@active_tab = "HOME"
  	@cache = ActiveSupport::Cache.lookup_store(:file_store, '/tmp/cache')
    load_urls
  end

  def website
    @name = params[:name]
    load_urls
    @urls.each { |url| @url = url[1] if url[0] == @name }
    respond_to do |format|
        format.html
        format.js
    end
  end

  private

  def load_urls
    @urls = [
      # EXPERIENCE
      ["woolworths", "https://www.woolworthsgroup.com.au"],
      ["pernodricard", "https://havana-club.com/en-ww/"],
      ["schlumberger", "https://www.slb.com/"],
      # EDUCATION
      ["polytechnique", "http://www.polytechnique.edu/en"],
      ["lse", "http://www.lse.ac.uk/"],
      ["jbsay", "http://lyc-jb-say.scola.ac-paris.fr/"]
    ]
  end
end
