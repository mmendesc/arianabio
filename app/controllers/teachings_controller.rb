class TeachingsController < ApplicationController
  before_action :set_teaching, only: [:show, :edit, :update, :destroy]

  # GET /teachings
  # GET /teachings.json
  def index
    @teachings = Teaching.all
  end

  # GET /teachings/1
  # GET /teachings/1.json
  def show
    views = @teaching.views.nil? ? 1 : @teaching.views + 1
    @teaching.update(views: views)
  end

  # GET /teachings/new
  def new
    @teaching = Teaching.new
  end

  # GET /teachings/1/edit
  def edit
  end

  def topics
    @teachings = []
    Teaching.all.each do |teaching|
      @teachings << teaching if teaching.topics.split(',').include?(params[:id])
    end
  end

  # POST /teachings
  # POST /teachings.json
  def create
    @teaching = Teaching.new(teaching_params)

    respond_to do |format|
      if @teaching.save
        format.html { redirect_to @teaching, notice: 'Teaching was successfully created.' }
        format.json { render :show, status: :created, location: @teaching }
      else
        format.html { render :new }
        format.json { render json: @teaching.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachings/1
  # PATCH/PUT /teachings/1.json
  def update
    respond_to do |format|
      if @teaching.update(teaching_params)
        format.html { redirect_to @teaching, notice: 'Teaching was successfully updated.' }
        format.json { render :show, status: :ok, location: @teaching }
      else
        format.html { render :edit }
        format.json { render json: @teaching.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachings/1
  # DELETE /teachings/1.json
  def destroy
    @teaching.destroy
    respond_to do |format|
      format.html { redirect_to teachings_url, notice: 'Teaching was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search_by_title
    @unities = Unity.all

    respond_to do |format|
      format.js
    end
  end

  def search_by_category
    @teachings = Teaching.where(category_id: params[:category_id])
#    binding.pry
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teaching
      @teaching = Teaching.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teaching_params
      params.require(:teaching).permit(:link, :category_id, :title, :views,:unity,:topics)
    end
end
