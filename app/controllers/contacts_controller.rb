class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contacts_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "We'll give you a ring shortly!"
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

private
  def contacts_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
