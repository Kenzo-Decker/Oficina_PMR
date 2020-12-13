class User < ApplicationRecord
  has_many :reservas_certo
  before_destroy :ensure_not_referenced_by_any_reservas_certo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  private
    def ensure_not_referenced_by_any_reservas_certo
      unless reservas_certo.empty?
          error.add(:base, 'Reservas presente')
          thow :abort
        end
      end
    end
