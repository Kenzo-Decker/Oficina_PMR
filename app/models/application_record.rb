class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  has_many :reservas_certo, dependent: :destroy
end
