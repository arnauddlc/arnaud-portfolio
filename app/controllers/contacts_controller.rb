class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
      respond_to do |format|
      	format.html
      	format.js
      end
    else
      flash.now[:error] = 'Cannot send message.'
      respond_to do |format|
      	format.html
      	format.js
      end
    end
  end
end
