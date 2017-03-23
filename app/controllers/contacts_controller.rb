class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.deliver_now
      flash.now[:notice] = "We'll give you a ring shortly!"
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
