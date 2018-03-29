class Artikel < ApplicationRecord
validates :judul, presence: true, length: {minimum: 3,maximum: 35 }
validates :deskripsi, presence: true,length: {minimum:10, maximum:200}


end
