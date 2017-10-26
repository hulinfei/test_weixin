class ParentMenusController < ApplicationController
  before_action :set_parent_menu, only: [:show, :edit, :update, :destroy]

  # GET /parent_menus
  # GET /parent_menus.json
  def index
    @parent_menus = ParentMenu.all
  end

  # GET /parent_menus/1
  # GET /parent_menus/1.json
  def show
  end

  # GET /parent_menus/new
  def new
    @parent_menu = ParentMenu.new
  end

  # GET /parent_menus/1/edit
  def edit
  end

  # POST /parent_menus
  # POST /parent_menus.json
  def create
    @parent_menu = ParentMenu.new(parent_menu_params)

    respond_to do |format|
      if @parent_menu.save
        format.html { redirect_to @parent_menu, notice: 'Parent menu was successfully created.' }
        format.json { render :show, status: :created, location: @parent_menu }
      else
        format.html { render :new }
        format.json { render json: @parent_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parent_menus/1
  # PATCH/PUT /parent_menus/1.json
  def update
    respond_to do |format|
      if @parent_menu.update(parent_menu_params)
        format.html { redirect_to @parent_menu, notice: 'Parent menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent_menu }
      else
        format.html { render :edit }
        format.json { render json: @parent_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_menus/1
  # DELETE /parent_menus/1.json
  def destroy
    @parent_menu.destroy
    respond_to do |format|
      format.html { redirect_to parent_menus_url, notice: 'Parent menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_menu
      @parent_menu = ParentMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_menu_params
      params.require(:parent_menu).permit(:name, :is_show)
    end
end
