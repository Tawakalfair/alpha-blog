class ArtikelsController < ApplicationController
def new
@artikel = Artikel.new

end

def create
#render plain: params[:artikel].inspect
@artikel = Artikel.new(artikel_params)
@artikel.save
redirect_to artikels_show(@artikel)
end

private
def artikel_params
params.require(:artikel).permit(:judul,:deskripsi)
end


end
