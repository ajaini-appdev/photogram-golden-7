Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #https://photogram-g7-intermediate.herokuapp.com/ - home page
  #https://photogram-g7-intermediate.herokuapp.com/photos - home page
  
  #https://photogram-g7-intermediate.herokuapp.com/photos/new - form to add a pic
  #/create_photo - pics get added
  
  #https://photogram-g7-intermediate.herokuapp.com/photos/1918/edit - form to edit a pic
  #/update_photo/123
  
  #https://photogram-g7-intermediate.herokuapp.com/photos/1918 - details of a pic
  
  #/delete_photo/4 - delete a pic
  
  get("/", { :controller => "pictures" , :action => "index"})
  get("/photos", { :controller => "pictures" , :action => "index"})
  get("/photos/new", { :controller => "pictures" , :action => "new_photo_form"})
  get("/create_photo", { :controller => "pictures" , :action => "create_row"})
  
  get("/photos/:an_id_number", { :controller => "pictures" , :action => "show_details"})
  
  get("/photos/:some_id_number/edit", { :controller => "pictures" , :action => "edit_form"})
  
  get("/update_photo/:the_id_number", { :controller => "pictures" , :action => "update_row"})
  
  get("/delete_photo/:bye_id_number", { :controller => "pictures" , :action => "destroy_row"})
  
  
end
