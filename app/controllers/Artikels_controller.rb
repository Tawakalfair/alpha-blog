class ArtikelsController < ApplicationController
  before_action :set_artikel, only:[:edit, :update, :show, :destroy]
def index
@artikel = Artikel.all
end

def new
@artikel = Artikel.new

end

def edit

end

def update

  if @artikel.update(artikel_params)
    flash[:notice] = "Artikel berhasil di edit"
    redirect_to artikel_path(@artikel)
  else
    render 'edit'
  end


end

def create
#render plain: params[:artikel].inspect
@artikel = Artikel.new(artikel_params)
if @artikel.save
flash[:notice]="artikel berhasil disimpan"
redirect_to artikel_path(@artikel)

else
render 'new'
end

end

def show

end

def destroy

@artikel.destroy
flash[:notice]= "artikel berhasil dihapus"
redirect_to artikels_path
end

private
def set_artikel
  @artikel= Artikel.find(params[:id])
end
def artikel_params
params.require(:artikel).permit(:judul,:deskripsi)
end

end
