class CrudsController < ApplicationController
  before_action :set_crud, only: %i[ show edit update destroy ]

  # GET /cruds or /cruds.json
  def index
    @cruds = Crud.all
  end

  # GET /cruds/1 or /cruds/1.json
  def show
  end

  # GET /cruds/new
  def new
    @crud = Crud.new
  end

  # GET /cruds/1/edit
  def edit
  end

  # POST /cruds or /cruds.json
  def create
    @crud = Crud.new(crud_params)

    respond_to do |format|
      if @crud.save
        format.html { redirect_to @crud, notice: "Crud was successfully created." }
        format.json { render :show, status: :created, location: @crud }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cruds/1 or /cruds/1.json
  def update
    respond_to do |format|
      if @crud.update(crud_params)
        format.html { redirect_to @crud, notice: "Crud was successfully updated." }
        format.json { render :show, status: :ok, location: @crud }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cruds/1 or /cruds/1.json
  def destroy
    @crud.destroy!

    respond_to do |format|
      format.html { redirect_to cruds_path, status: :see_other, notice: "Crud was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crud
      @crud = Crud.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crud_params
      params.require(:crud).permit(:first_name, :last_name, :phone_no, :house_address, :day_registered, :email_id)
    end
end
