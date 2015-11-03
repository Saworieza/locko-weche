class EnglishesController < ApplicationController
  before_action :set_english, only: [:show, :edit, :update, :destroy]

  # GET /englishes
  # GET /englishes.json
  def index
    @englishes = English.all
  end

  # GET /englishes/1
  # GET /englishes/1.json
  def show
  end

  # GET /englishes/new
  def new
    @english = English.new
  end

  # GET /englishes/1/edit
  def edit
  end

  # POST /englishes
  # POST /englishes.json
  def create
    @english = English.new(english_params)

    respond_to do |format|
      if @english.save
        format.html { redirect_to englishes_path, notice: 'English was successfully created.' }
        format.json { render :show, status: :created, location: @english }
      else
        format.html { render :new }
        format.json { render json: @english.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /englishes/1
  # PATCH/PUT /englishes/1.json
  def update
    respond_to do |format|
      if @english.update(english_params)
        format.html { redirect_to @english, notice: 'English was successfully updated.' }
        format.json { render :show, status: :ok, location: @english }
      else
        format.html { render :edit }
        format.json { render json: @english.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /englishes/1
  # DELETE /englishes/1.json
  def destroy
    @english.destroy
    respond_to do |format|
      format.html { redirect_to englishes_url, notice: 'English was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_english
      @english = English.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def english_params
      params.require(:english).permit(:word, :meaning)
    end
end
