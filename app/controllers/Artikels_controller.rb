class ArtikelsController < ApplicationController
def index
@artikel = Artikel.all
end

def new
@artikel = Artikel.new

end

def edit
@artikel = Artikel.find(params[:id])
end

def update
  @artikel = Artikel.find(params[:id])
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
@artikel= Artikel.find(params[:id])
end

private
def artikel_params
params.require(:artikel).permit(:judul,:deskripsi)
end

end
