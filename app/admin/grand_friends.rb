ActiveAdmin.register GrandFriend do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :first_name, :last_name, :birthdate, :description, :intereses, :picture, :considerations, :block_visit
  #
  # or
  #
  permit_params do
    permitted = [:first_name, :last_name, :birthdate, :description, :intereses, :picture, :considerations, :block_visit]
    permitted << :other if params[:action] == 'create'
    permitted
  end
  
end
