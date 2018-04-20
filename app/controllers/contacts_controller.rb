class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = "Your message \'#{@contact.subject}\' has been sent. I will be in touch soon!"
      respond_to do |format|
      	format.html
      	format.js
      end
    else
      flash[:alert] = "Cannot send message \'#{@contact.subject}\'"
      respond_to do |format|
      	format.html
      	format.js
      end
    end
  end
end
