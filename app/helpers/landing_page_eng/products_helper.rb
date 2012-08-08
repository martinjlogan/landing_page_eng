module LandingPageEng
	module ProductsHelper
		# TODO where can we put this so it is implemented only once
		def link_to_add_fields(name, f, association, partial = nil)
			new_object = f.object.send(association).klass.new
			id = new_object.object_id
			fields = f.fields_for(association, new_object, child_index: id) do |builder|
				if partial.nil?
					render(association.to_s.singularize + "_fields", f: builder)
				else
					render(partial + "_fields", f: builder)
				end
			end
			link_to(name, '#', class: "add_fields button", data: {id: id, fields: fields.gsub("\n", "")})
		end
	end
end
