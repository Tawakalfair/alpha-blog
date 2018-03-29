class TambahDataKeArtikels < ActiveRecord::Migration[5.1]
  def change
    add_column :artikels, :deskripsi, :text
    add_column :artikels, :created_at, :datetime
    add_column :artikels, :updated_at, :datetime
  end
end
