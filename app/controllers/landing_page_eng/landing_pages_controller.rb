#require_dependency "landing_page_eng/application_controller"

module LandingPageEng
	class LandingPagesController < LandingPageEng::ApplicationController
		include LandingPagesControllerMixin
		# GET /landing_pages
		# GET /landing_pages.json
		def index
			@landing_pages = LandingPage.all

			respond_to do |format|
				format.html # index.html.erb
				format.json { render json: @landing_pages }
			end
		end

		def sitemap
			@landing_pages = LandingPage.all

			respond_to do |format|
				format.html 
				format.xml  
			end
		end

		def route
			@landing_page = LandingPage.find_by_slug(params[:slug])

			render :show
		end

		# GET /landing_pages/1
		# GET /landing_pages/1.json
		def show
			@landing_page = LandingPage.find(params[:id])

			# adds instance variables 
			add_vars_based_on_template_for_show_action(@landing_page.template)

			respond_to do |format|
				format.html { render render_template(@landing_page) } # show.html.erb
				format.json { render json: @landing_page }
			end
		end

		def show_home
			@landing_page = LandingPage.where("slug = \'home-page\'").first
			add_vars_based_on_template_for_show_action(@landing_page.template)

			respond_to do |format|
				format.html { render render_template(@landing_page) } # show.html.erb
				format.json { render json: @landing_page }
			end
		end
		
		# GET /landing_pages/new
		# GET /landing_pages/new.json
		def new
			logger.debug "******* paths loaded are #{Rails.application.config.assets.paths}"
			@landing_page = LandingPage.new

			respond_to do |format|
				format.html # new.html.erb
				format.json { render json: @landing_page }
			end
		end

		# GET /landing_pages/1/edit
		def edit
			@landing_page = LandingPage.find(params[:id])
		end

		# POST /landing_pages
		# POST /landing_pages.json
		def create
			@landing_page = LandingPage.new(params[:landing_page])

			respond_to do |format|
				if @landing_page.save
					format.html { redirect_to @landing_page, notice: 'Landing page was successfully created.' }
					format.json { render json: @landing_page, status: :created, location: @landing_page }
				else
					format.html { render action: "new" }
					format.json { render json: @landing_page.errors, status: :unprocessable_entity }
				end
			end
		end

		# PUT /landing_pages/1
		# PUT /landing_pages/1.json
		def update
			@landing_page = LandingPage.find(params[:id])

			respond_to do |format|
				if @landing_page.update_attributes(params[:landing_page])
					format.html { redirect_to @landing_page, notice: 'Landing page was successfully updated.' }
					format.json { head :no_content }
				else
					format.html { render action: "edit" }
					format.json { render json: @landing_page.errors, status: :unprocessable_entity }
				end
			end
		end

		# DELETE /landing_pages/1
		# DELETE /landing_pages/1.json
		def destroy
			@landing_page = LandingPage.find(params[:id])
			@landing_page.destroy

			respond_to do |format|
				format.html { redirect_to landing_pages_url }
				format.json { head :no_content }
			end
		end

		private

		def render_template(landing_page)
			if landing_page.template.blank?
				"show"
			else
				landing_page.template
			end
		end
	end
end
