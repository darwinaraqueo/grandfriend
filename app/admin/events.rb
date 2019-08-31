ActiveAdmin.register Event do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :asylums_id, :name, :description, :category, :start_date, :end_date
  #
  # or
  #
  permit_params do
    permitted = [:asylums_id, :name, :description, :category, :start_date, :end_date]
    permitted << :other if params[:action] == 'create'
    permitted
  end
  
end
