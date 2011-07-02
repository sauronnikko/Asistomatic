class DocentesController < ApplicationController

def index
  @docentes = Docente.all
  respond_to do |format|
    format.html # index.html.erb
    format.xml { render :xml => @docentes }
  end
end


  def show
    @docente = Docente.find(params[:id])   
     
  end

  def new
    @docente = Docente.new
  end



  def create
    @docente = Docente.new(params[:docente])
    if @docente.save
      respond_to do |format|
        format.html { redirect_to @docente, :notice => 'Thanks for your comment' }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to @docente, :alert => 'Unable to add comment' }
        format.js { render 'fail_create.js.erb' }
      end
    end
  end


  def edit
    @docente = Docente.find(params[:id])
  end




  def update
    @docente = Docente.find(params[:id])
    respond_to do |format|
      if @docente.update_attributes(params[:docente])
        format.html { redirect_to(@docente, :notice => 'El docente fue exitosamente actualizado') }
        format.xml { head :ok }
      else
        format.html { render :action => :edit }
        format.xml { render :xml => @docente.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy

    puts params[:id]
    @docente = Docente.find(params[:id])
    @docente.destroy
    respond_to do |format|
      format.html { redirect_to(index_url) }
      format.xml { head :ok }
    end

  end

end
