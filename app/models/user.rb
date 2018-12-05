class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Array of providers we can sign in with
  # Better to choose just one of them to avoid confusion
  devise :omniauthable, omniauth_providers: [:facebook]
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
