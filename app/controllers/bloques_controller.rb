class BloquesController < ApplicationController

  def index
    @bloques = Bloque.all
  end

  def show
    #render :layout => false
  end

  def new_option
    
  end

  def new_individual
    @bloque = Bloque.new
    max_hora = 20
    hora = 7
    min = 0
    min_str = "00"
    @horas = []
    while hora < max_hora
      if min == 0 then 
        @horas.push("#{hora}:#{min_str}")
      else
        @horas.push("#{hora}:#{min}")
      end
      min += 45
      if (min >= 60)
        then  min = min - 60
              hora += 1
      else 
        end
    end
    render :new_individual, :layout => false
  end



  def new_varios
    @bloque = Bloque.new
    max_hora = 20
    hora = 7
    min = 0
    min_str = "00"
    @horas = []
    @intervalos = ["15 min.", "30 min.", "45 min.", "1 hr.", "1:15 hr.", "1:30 hr.", "1:45 hr.", "2 hr."]
    while hora < max_hora
      if min == 0 then 
        @horas.push("#{hora}:#{min_str}")
      else
        @horas.push("#{hora}:#{min}")
      end
      min += 45
      if (min >= 60)
        then  min = min - 60
              hora += 1
      else 
        end
    end
    render :new_varios, :layout => false
  end


  def create
    @bloque = Bloque.new(:params[:bloque])
  end

  def edit
  end

  def destroy
  end

end
