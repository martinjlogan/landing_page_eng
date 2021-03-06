require_dependency "landing_page_eng/application_controller"

module LandingPageEng
  class ProductsController < ApplicationController
    # GET /products
    # GET /products.json
    def index
      @products = Product.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @products }
      end
    end
  
    # GET /products/1
    # GET /products/1.json
    def show
      @product = Product.find(params[:id])
      # TODO limit the number of results to someting reasonable
      @recommended_products = Product.where("id != ?", @product.id) 

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @product }
      end
    end

    def route
      @product = Product.find_by_slug(params[:slug])
      @recommended_products = Product.where("id != ?", @product.id) 

      render :show
    end

    def sitemap
      @products = Product.all

      respond_to do |format|
        format.html 
        format.xml  
      end
    end
  
    # GET /products/new
    # GET /products/new.json
    def new
      @product = Product.new
      @categories = Product::CATEGORIES
      
      respond_to do |format|
        format.html { render layout: false } # new.html.erb
        format.json { render json: @product }
      end
    end
  
    # GET /products/1/edit
    def edit
      @product = Product.find(params[:id])
      @categories = Product::CATEGORIES
    end
  
    # POST /products
    # POST /products.json
    def create
      @product = Product.new(params[:product])
  
      respond_to do |format|
        if @product.save
          format.html { redirect_to @product, notice: 'Product was successfully created.' }
          format.json { render json: @product, status: :created, location: @product }
        else
          format.html { render action: "new" }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /products/1
    # PUT /products/1.json
    def update
      @product = Product.find(params[:id])
  
      respond_to do |format|
        if @product.update_attributes(params[:product])
          format.html { redirect_to @product, notice: 'Product was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /products/1
    # DELETE /products/1.json
    def destroy
      @product = Product.find(params[:id])
      @product.destroy
  
      respond_to do |format|
        format.html { redirect_to products_url }
        format.json { head :no_content }
      end
    end
  end
end
