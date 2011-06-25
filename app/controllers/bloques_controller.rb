class BloquesController < ApplicationController

  def index
    @bloques = Bloque.all
  end

  def show

  end

  def new
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
  end

  def create
  end

  def edit
  end

  def destroy
  end

end
