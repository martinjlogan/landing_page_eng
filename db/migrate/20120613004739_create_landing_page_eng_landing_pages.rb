class CreateLandingPageEngLandingPages < ActiveRecord::Migration
	def change
		create_table :landing_page_eng_landing_pages do |t|
			t.string :slug
			t.string :template
			t.text :meta_description
			t.text :meta_keywords
			t.text :title
			t.text :body

			t.timestamps
		end
	end
end
