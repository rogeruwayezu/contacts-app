Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/contact", to: 'contacts#contact' 
  get "/all_contacts", to: 'contacts#all_contacts'

end
