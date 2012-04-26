class PropostasController < ApplicationController
  # GET /propostas
  # GET /propostas.json
  def index
    @propostas = Proposta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @propostas }
    end
  end

  # GET /propostas/1
  # GET /propostas/1.json
  def show
    @proposta = Proposta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proposta }
    end
  end

  # GET /propostas/new
  # GET /propostas/new.json
  def new
    @proposta = Proposta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proposta }
    end
  end

  # GET /propostas/1/edit
  def edit
    @proposta = Proposta.find(params[:id])
  end

  # POST /propostas
  # POST /propostas.json
  def create
    @proposta = Proposta.new(params[:proposta])

    respond_to do |format|
      if @proposta.save
        format.html { redirect_to @proposta, notice: 'Proposta was successfully created.' }
        format.json { render json: @proposta, status: :created, location: @proposta }
      else
        format.html { render action: "new" }
        format.json { render json: @proposta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /propostas/1
  # PUT /propostas/1.json
  def update
    @proposta = Proposta.find(params[:id])

    respond_to do |format|
      if @proposta.update_attributes(params[:proposta])
        format.html { redirect_to @proposta, notice: 'Proposta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proposta.errors, status: :unprocessable_entity }
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
      format.json { head :no_content }
    end
  end
end
