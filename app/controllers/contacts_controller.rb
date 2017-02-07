class ContactsController < ApplicationController
  def show
    @contact = Contact.find_by(id: params[:id])
  end
  def index
    if params[:group]
      @contacts =  Group.find_by(name: params[:group]).contacts
    else
    @contacts = Contact.all
    end
    
  end
  def new

  end
  def create
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    phone_number = params[:phone_number]   
    contact = Contact.new({first_name: first_name, last_name: last_name, email: email, phone_number: phone_number}) 
    contact.save
    redirect_to "/contacts"
  end
  def edit
    @contact = Contact.find_by(id: params[:id])
  end
  def update
    contact = Contact.find_by(id: params[:id])
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.email = params[:email]
    contact.phone_number = params[:phone_number]
    contact.save
    flash[:success] = "Contact Updated"
    redirect_to "/contacts/#{contact.id}"

  end
  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
    flash[:success] = "Contact deleted"
    redirect_to "/contacts"
  end
  def all_johns
    if first_name == "John"
      return first_name
    end
  end
  def search
    search_query = params[:search_input]
    # @contacts = Contact.where("first_name LIKE ? OR last_name LIKE ?", "%#{search_query}%", "%#{search_query}%")
    render :index
  end
end
