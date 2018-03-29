class CreateArtikels < ActiveRecord::Migration[5.1]
  def change
    create_table :artikels do |t|
      t.string :judul
      end
  end
end
