ActiveAdmin.register ZoiglStube do
  permit_params :stube_name, :address, :city, :rbid, :founded, :score, :lat, :lon, :web, :hours, :description, :phone

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
