class InasistenciasController < ApplicationController
  def new
  end

  def create
    @inasistencia = Inasistencia.new(params[:inasistencia])
    @docente = Docente.find(params[:docente_id])
    @inasistencia.docente_id = @docente.id
    @fecha = Fecha.new
    @fecha.fecha = params[:datepicker]
 



    if @inasistencia.save and @docente.save
      respond_to do |format|
        format.html { redirect_to :controller => :docentes, :action => :show, :id => @inasistencia.docente_id, :notice => 'Agregada nueva inasistencia' }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to @bloque, :alert => 'Unable to add comment' }
        format.js { render 'fail_create.js.erb' }
      end
    end


  end

  def destroy
    @inasistencia = Inasistencia.find(params[:id])
    @inasistencia.destroy
    respond_to do |format|
      format.html { redirect_to :controller => :docentes, :action => :index }
      format.xml { head :ok }
    end
  end


  def show
  end

  def index
  end

end
