class PropostasController < ApplicationController
  before_filter :authenticate_user!, :only => [:show, :destroy, :update]
  
  # GET /propostas
  # GET /propostas.json
  def index
    @propostas = Proposta.all.order("id")

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
  
  def update
     @proposta = Proposta.find(params[:id])

     respond_to do |format|
       if @proposta.update_attributes(params[:proposta])
         format.html { redirect_to propostas_path, notice: 'Proposta modificada com sucesso.' }
       else
         format.html { redirect_to propostas_path, notice: 'Erro ao alterar proposta.' }
       end
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
  
  def destroy
    @proposta = Proposta.find(params[:id])
    @proposta.destroy

    respond_to do |format|
      format.html { redirect_to(propostas_path) }
    end
  end
end
