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

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

  POSITIONS = %w(Attacker Midfield Defender Goalkeeper).freeze
  NATIONALITIES = %w(Afghan Albanian Algerian American Andorran Angolan Antiguans
                     Argentinean Armenian Australian Austrian Azerbaijani Bahamian
                      Bahraini Bangladeshi Barbadian Barbudans Batswana Belarusian
                      Belgian Belizean Beninese Bhutanese Bolivian Bosnian
                      Brazilian British Bruneian Bulgarian Burkinabe Burmese
                      Burundian Cambodian Cameroonian Canadian Cape Verdean Central African
                      Chadian Chilean Chinese Colombian Comoran Congolese
                      Costa Rican Croatian Cuban Cypriot Czech Danish
                      Djibouti Dominican Dutch East Timorese Ecuadorean Egyptian
                      Emirian Equatorial Guinean Eritrean Estonian Ethiopian Fijian
                      Filipino Finnish French Gabonese Gambian Georgian
                      German Ghanaian Greek Grenadian Guatemalan Guinea-Bissauan
                      Guinean Guyanese Haitian Herzegovinian Honduran Hungarian
                      I-Kiribati Icelander Indian Indonesian Iranian Iraqi
                      Irish Israeli Italian Ivorian Jamaican Japanese
                      Jordanian Kazakhstani Kenyan Kittian and Nevisian Kuwaiti Kyrgyz
                      Laotian Latvian Lebanese Liberian Libyan Liechtensteiner
                      Lithuanian Luxembourger Macedonian Malagasy Malawian Malaysian
                      Maldivian Malian Maltese Marshallese Mauritanian Mauritian
                      Mexican Micronesian Moldovan Monacan Mongolian Moroccan
                      Mosotho Motswana Mozambican Namibian Nauruan Nepalese
                      New Zealander Ni-Vanuatu Nicaraguan Nigerian Nigerien North-Korean
                      Northern Irish Norwegian Omani Pakistani Palauan Panamanian
                      Papua New Guinean Paraguayan Peruvian Polish Portuguese Qatari
                      Romanian Russian Rwandan Saint Lucian Salvadoran Samoan
                      San Marinese Sao Tomean Saudi Scottish Senegalese Serbian
                      Seychellois Sierra Leonean Singaporean Slovakian Slovenian Solomon
                      Islander Somali South African South Korean Spanish Sri Lankan
                      Sudanese Surinamer Swazi Swedish Swiss Syrian Taiwanese
                      Tajik Tanzanian Thai Togolese Tongan Trinidadian/Tobagonian
                      Tunisian Turkish Tuvaluan Ugandan Ukrainian Uruguayan
                      Uzbekistani Venezuelan Vietnamese Welsh Yemenite Zambian
                      Zimbabwean).freeze
end
