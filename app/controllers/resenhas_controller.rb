class ResenhasController < ApplicationController
  before_action :set_resenha, only: [:show, :edit, :update, :destroy]

  # GET /resenhas
  # GET /resenhas.json
  def index
    @resenhas = Resenha.all
  end

  # GET /resenhas/1
  # GET /resenhas/1.json
  def show
  end

  # GET /resenhas/new
  def new
    @resenha = Resenha.new
  end

  # GET /resenhas/1/edit
  def edit
  end

  # POST /resenhas
  # POST /resenhas.json
  def create
    @resenha = Resenha.new(resenha_params)

    respond_to do |format|
      if @resenha.save
        format.html { redirect_to @resenha, notice: 'Resenha foi criada com sucesso!' }
        format.json { render :show, status: :created, location: @resenha }
      else
        format.html { render :new }
        format.json { render json: @resenha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resenhas/1
  # PATCH/PUT /resenhas/1.json
  def update
    respond_to do |format|
      if @resenha.update(resenha_params)
        format.html { redirect_to @resenha, notice: 'Resenha foi editada com sucesso.' }
        format.json { render :show, status: :ok, location: @resenha }
      else
        format.html { render :edit }
        format.json { render json: @resenha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resenhas/1
  # DELETE /resenhas/1.json
  def destroy
    @resenha.destroy
    respond_to do |format|
      format.html { redirect_to resenhas_url, notice: 'Resenha foi removida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resenha
      @resenha = Resenha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resenha_params
      params.require(:resenha).permit(:idUser, :idLivro, :body, :data)
    end
end
