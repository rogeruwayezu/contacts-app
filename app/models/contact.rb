class Contact < ApplicationRecord
  has_many :group_contacts
  has_many :groups, through: :group_contacts
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end
  # def full_name
  #   first_name + " " + last_name
  # end
  def prefix
    "+ 81 #{phone_number}"
  end

  
end
