class PagesController < ApplicationController
  def home
  	@active_tab = "HOME"
  	@cache = ActiveSupport::Cache.lookup_store(:file_store, '/tmp/cache')
    @contact = Contact.new
    flash[:alert] = nil
    flash[:notice] = nil 
  end

  def websitesall
    @cache = ActiveSupport::Cache.lookup_store(:file_store, '/tmp/cache')
    load_urls
    respond_to do |format|
        format.html
        format.js
    end
  end

  def website
    @name = params[:name]
    load_urls
    @urls.each { |element| @url = element[1] if element[0] == @name }
    @cache = ActiveSupport::Cache.lookup_store(:file_store, '/tmp/cache')
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
      ["vinci", "http://www.vinciconstruction.co.uk/"],
      ["gendarmerie", "https://www.gendarmerie.interieur.gouv.fr/"],
      # EDUCATION
      ["lewagon", "https://www.lewagon.com"],
      ["polytechnique", "http://www.polytechnique.edu/en"],
      ["lse", "http://www.lse.ac.uk/"],
      ["jbsay", "http://lyc-jb-say.scola.ac-paris.fr/"],
      # OTHER INTERESTS
      # PORTFOLIO
      ["wearewaterfall", "http://www.wearewaterfall.com/"]
    ]
  end
end
