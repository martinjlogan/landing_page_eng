module LandingPageEng
	module LandingPagesControllerMixin
		def add_vars_based_on_template_for_show_action(template, params = {})
			case template 
				when "show" then ""	
				when "home" then 
					if params[:for].nil?
						@new_products = Product.order("updated_at DESC").limit(7)
					else
						@new_products = Product.search(tags: params[:for]).order("updated_at DESC").limit(7)
					end
				else ""
			end
		end
	end
end