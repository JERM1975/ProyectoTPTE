class ContactosController < ApplicationController
  def index
  end

  def new
    @contacto = Contacto.new
  end

  def create
    @contacto = Contacto.new(params.require(:contacto).permit(:email, :mensaje))

    respond_to do |format|
      if @contacto.save
        format.html { redirect_to contacto_url(@contacto),
                      notice: "Tu mensaje fue recibido exitosamente. Pronto te contactaremos" }
        format.json {render :show, status: :created, location: @contacto}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end
end
