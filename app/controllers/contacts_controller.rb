class ContactsController < ApplicationController
def new
  @contact = Contact.new
end
def create
  @contact = Contact.new(contact_params)
  if @contact.save
     redirect_to new_contact_path, notice: "Nachricht gesendet."
  else
     redirect_to new_contact_path, notice: "Etwas ist schiefgelaufen."
  end
end
private
  def contact_params
     params.require(:contact).permit(:name, :email, :comment)
  end
   
end
   