module LandingPageEng
	module LandingPagesControllerMixin
		def add_vars_based_on_template_for_show_action(template)
			case template 
				when "show" then ""	
				when "home" then @new_products = Product.order("updated_at DESC").limit(7)
				else ""
			end
		end
	end
end