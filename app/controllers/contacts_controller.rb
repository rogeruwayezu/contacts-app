class ContactsController < ApplicationController
  def contact
    @x = Contact.first
    render "contact.html"
  end
  def all_contacts
    @all_contacts = Contact.all
    render "all_contacts.html"
  end
end
