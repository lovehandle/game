ActiveAdmin.register Venue do

  action_item only: :show do
    link_to "New Challenge", new_admin_venue_challenge_path(venue)
  end

  sidebar :attributes, only: :show do
    attributes_table_for(venue) do
      row :id
      row :address
      row :title
      row :description
      row :created_at
      row :updated_at
    end
  end

  show do
    panel "Challenges" do
      table_for(venue.challenges) do
        column :id
        column :title
        column(:actions) do |challenge|
          [ link_to("Show", admin_venue_challenge_path(venue_id: venue.id, id: challenge.id)), 
            link_to("Edit", edit_admin_venue_challenge_path(venue_id: venue.id, id: challenge.id)), 
            link_to("Destroy", admin_venue_challenge_path(venue_id: venue.id, id: challenge.id), method: :delete) ].join(", ").html_safe
        end
      end
    end
    active_admin_comments
  end

end
