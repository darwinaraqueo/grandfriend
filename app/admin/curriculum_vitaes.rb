ActiveAdmin.register CurriculumVitae do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :first_name, :last_name, :confidence_level, :picture, :decription, :users_id
  #
  # or
  #
  permit_params do
    permitted = [:first_name, :last_name, :confidence_level, :picture, :description, :user_id]
    permitted << :other if params[:action] == 'create' 
    permitted
  end
  
end
