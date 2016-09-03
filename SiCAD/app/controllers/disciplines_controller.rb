class DisciplinesController < ApplicationController

  def new
    @Discipline = Discipline.new
  end

  def create
    @Discipline = Discipline.new(params[:user])
    if @Discipline.save
      redirect_to @Discipline,
      :notice => 'Cadastro criado com sucesso!'
    else
      render :new
    end
  end

end
