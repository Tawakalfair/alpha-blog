class ArtikelsController < ApplicationController
def new
@artikel = Artikel.new

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
