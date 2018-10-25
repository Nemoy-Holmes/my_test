class SimplePagesController < ApplicationController
  before_action :set_simple_page, only: [:show, :edit, :update, :destroy]

  # GET /simple_pages
  # GET /simple_pages.json
  def index
    @simple_pages = SimplePage.all
  end

  # GET /simple_pages/1
  # GET /simple_pages/1.json
  def show
  end

  # GET /simple_pages/new
  def new
    @simple_page = SimplePage.new
  end

  # GET /simple_pages/1/edit
  def edit
  end

  # POST /simple_pages
  # POST /simple_pages.json
  def create
    @simple_page = SimplePage.new(simple_page_params)

    respond_to do |format|
      if @simple_page.save
        format.html { redirect_to @simple_page, notice: 'Simple page was successfully created.' }
        format.json { render :show, status: :created, location: @simple_page }
      else
        format.html { render :new }
        format.json { render json: @simple_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_pages/1
  # PATCH/PUT /simple_pages/1.json
  def update
    respond_to do |format|
      if @simple_page.update(simple_page_params)
        format.html { redirect_to @simple_page, notice: 'Simple page was successfully updated.' }
        format.json { render :show, status: :ok, location: @simple_page }
      else
        format.html { render :edit }
        format.json { render json: @simple_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_pages/1
  # DELETE /simple_pages/1.json
  def destroy
    @simple_page.destroy
    respond_to do |format|
      format.html { redirect_to simple_pages_url, notice: 'Simple page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_page
      @simple_page = SimplePage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_page_params
      params.fetch(:simple_page, {})
    end
end
