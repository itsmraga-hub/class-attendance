class PresentsController < ApplicationController
  before_action :set_present, only: %i[show edit update destroy]

  # GET /presents or /presents.json
  def index
    @presents = Present.all
  end

  # GET /presents/1 or /presents/1.json
  def show; end

  # GET /presents/new
  def new
    @present = Present.new
  end

  # GET /presents/1/edit
  def edit; end

  # POST /presents or /presents.json
  def create
    @present = Present.new(present_params)

    respond_to do |format|
      if @present.save
        format.html { redirect_to present_url(@present), notice: 'Present was successfully created.' }
        format.json { render :show, status: :created, location: @present }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @present.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presents/1 or /presents/1.json
  def update
    respond_to do |format|
      if @present.update(present_params)
        format.html { redirect_to present_url(@present), notice: 'Present was successfully updated.' }
        format.json { render :show, status: :ok, location: @present }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @present.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presents/1 or /presents/1.json
  def destroy
    @present.destroy

    respond_to do |format|
      format.html { redirect_to presents_url, notice: 'Present was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_present
    @present = Present.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def present_params
    params.require(:present).permit(:student_id, :subject_id, :subject_date)
  end
end
