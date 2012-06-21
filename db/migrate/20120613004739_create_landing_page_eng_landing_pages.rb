class CreateLandingPageEngLandingPages < ActiveRecord::Migration
	def change
		create_table :landing_page_eng_landing_pages do |t|
			t.text :meta_description
			t.text :title
			t.text :tagline
			t.text :body
			t.string :call_to_action_url

			t.timestamps
		end
	end
end
