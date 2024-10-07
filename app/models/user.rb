# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  nombre                 :string
#  tipo_usuario           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Relaciones
  has_many :trayectos, dependent: :destroy

  # Lógica enum
  enum tipo_usuario: { conductor: 'conductor', supervisor: 'supervisor' }
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.tipo_usuario ||= 'conductor' # El valor por defecto para `tipo_usuario` es 'conductor'
  end
end
