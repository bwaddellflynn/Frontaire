ActiveAdmin.register Flight do
  permit_params :destination, :flight_date, :departure_time, :arrival_time, :departure_iata, :arrival_iata, :price, :vaccancy, :image

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

end
