class PensController < ApplicationController
  def index
    @pens=Pen.all
  end
  
  def show
    @pen = Pen.find(params[:id])
  end

  def new 
    @pen= Pen.new
  end

  def create
    @pen = Pen.new(pen_params)

    if @pen.save
      redirect_to pens_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pen = Pen.find(params[:id])
  end

  def update
    @pen = Pen.find(params[:id])

    if @pen.update(pen_params)
      redirect_to pens_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pen = Pen.find(params[:id])
    @pen.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def pen_params
      params.require(:pen).permit(:name_of_company,:ink_colour,:no_of_pens)
    end
end
