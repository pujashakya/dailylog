class DiaperEntriesController < ApplicationController
  before_action :set_diaper_entry, only: [:show, :edit, :update, :destroy]

  # GET /diaper_entries
  # GET /diaper_entries.json
  def index
    @diaper_entries = DiaperEntry.all
  end

  # GET /diaper_entries/1
  # GET /diaper_entries/1.json
  def show
  end

  # GET /diaper_entries/new
  def new
    @diaper_entry = DiaperEntry.new
  end

  # GET /diaper_entries/1/edit
  def edit
  end

  # POST /diaper_entries
  # POST /diaper_entries.json
  def create
    @diaper_entry = DiaperEntry.new(diaper_entry_params)

    respond_to do |format|
      if @diaper_entry.save
        format.html { redirect_to @diaper_entry, notice: 'Diaper entry was successfully created.' }
        format.json { render :show, status: :created, location: @diaper_entry }
      else
        format.html { render :new }
        format.json { render json: @diaper_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diaper_entries/1
  # PATCH/PUT /diaper_entries/1.json
  def update
    respond_to do |format|
      if @diaper_entry.update(diaper_entry_params)
        format.html { redirect_to @diaper_entry, notice: 'Diaper entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @diaper_entry }
      else
        format.html { render :edit }
        format.json { render json: @diaper_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diaper_entries/1
  # DELETE /diaper_entries/1.json
  def destroy
    @diaper_entry.destroy
    respond_to do |format|
      format.html { redirect_to diaper_entries_url, notice: 'Diaper entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diaper_entry
      @diaper_entry = DiaperEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diaper_entry_params
      params.require(:diaper_entry).permit(:daiper_change_date, :change_type, :notes)
    end
end
