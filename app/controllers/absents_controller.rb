class AbsentsController < ApplicationController
  before_action :set_absent, only: %i[show edit update destroy]

  # GET /absents or /absents.json
  def index
    @absents = Absent.all
  end

  # GET /absents/1 or /absents/1.json
  def show; end

  # GET /absents/new
  def new
    @absent = Absent.new
  end

  # GET /absents/1/edit
  def edit; end

  # POST /absents or /absents.json
  def create
    @absent = Absent.new(absent_params)

    respond_to do |format|
      if @absent.save
        format.html { redirect_to absent_url(@absent), notice: 'Absent was successfully created.' }
        format.json { render :show, status: :created, location: @absent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @absent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /absents/1 or /absents/1.json
  def update
    respond_to do |format|
      if @absent.update(absent_params)
        format.html { redirect_to absent_url(@absent), notice: 'Absent was successfully updated.' }
        format.json { render :show, status: :ok, location: @absent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @absent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /absents/1 or /absents/1.json
  def destroy
    @absent.destroy

    respond_to do |format|
      format.html { redirect_to absents_url, notice: 'Absent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_absent
    @absent = Absent.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def absent_params
    params.require(:absent).permit(:student_id, :subject_id, :subject_date)
  end
end
