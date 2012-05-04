class PropostasController < ApplicationController
  # GET /propostas
  # GET /propostas.json
  def index
    @propostas = Proposta.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /propostas/1
  # GET /propostas/1.json
  def show
    @proposta = Proposta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /propostas/new
  # GET /propostas/new.json
  def new
    @proposta = Proposta.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # POST /propostas
  # POST /propostas.json
  def create
    @proposta = Proposta.new(params[:proposta])

    respond_to do |format|
      if @proposta.save
        format.html { redirect_to propostas_path, notice: 'Proposta was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # DELETE /propostas/1
  # DELETE /propostas/1.json
  def destroy
    @proposta = Proposta.find(params[:id])
    @proposta.destroy

    respond_to do |format|
      format.html { redirect_to propostas_url }
    end
  end
end
