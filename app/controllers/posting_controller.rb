class PostingController < ApplicationController
  def index
    @data = Posting.all
  end
  def detail 
    @data = Posting.find_by(id: params[:id])
  end
  def input
    
  end
  def create
    @data = Posting.new(judul: params[:judul], deskripsi: params[:deskripsi])
    @data.save

    flash[:pesan] = "Data Berhasil Disimpan"

    redirect_to ("/posting/index")
  end
  def edit
    @data = Posting.find_by(id: params[:id])
  end
  def update
    @data = Posting.find_by(id: params[:id])
    @data.judul = params[:judul]
    @data.deskripsi = params[:deskripsi]
    @data.save
    flash[:pesan] = "Data Berhasil Di Update"

    redirect_to ("/posting/index")
  end
  def delete
    @data = Posting.find_by(id: params[:id])
    @data.destroy
    flash[:pesan] = "Data Berhasil Di Hapus"

    redirect_to ("/posting/index")
  end

end
