puts "Creating users..."
users_attributes = [
  {
    first_name: "Christiano",
    last_name: "Ronalde",
    email: "christian.ronalde@gmail.com",
    password: "crazyfootball",
    nationality: "Portuguese",
    date_of_birth: "20/09/1986",
    position: "Attacker",
    photo_fake: "https://data.pixiz.com/output/user/frame/preview/400x400/6/8/3/0/1620386_c15fd.jpg",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Leo",
    last_name: "Messaround",
    email: "leo.messaround@gmail.com",
    password: "crazyfootball",
    nationality: "Argentinian",
    date_of_birth: "20/10/1988",
    position: "Attacker",
    photo_fake: "https://images2.minutemediacdn.com/image/upload/c_fill,w_912,h_516,f_auto,q_auto,g_auto/shape/cover/sport/fc-barcelona-v-arsenal-pre-season-friendly-5d4bd7fc9ab4541622000001.jpg",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Thiago",
    last_name: "Sylvester",
    email: "thiagu.sylvester@gmail.com",
    password: "crazyfootball",
    nationality: "Brazilian",
    date_of_birth: "10/06/1985",
    position: "Defender",
    photo_fake: "https://img.bfmtv.com/c/1256/708/2d089c/005df1e2c38498c6a6737b94a6.jpeg",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "N'golo",
    last_name: "Kant",
    email: "ngolo.kant@gmail.com",
    password: "crazyfootball",
    nationality: "French",
    date_of_birth: "20/11/1991",
    position: "Midfielder",
    photo_fake: "https://i.guim.co.uk/img/media/1d4f4606c63e5615bf0ff7632e6f396e7f2b68d2/0_87_1822_1093/master/1822.jpg?width=300&quality=85&auto=format&fit=max&s=4e1f071a08b383fe6b5d20c62e81eba3",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Manu",
    last_name: "Neuart",
    email: "manu.neuart@gmail.com",
    password: "crazyfootball",
    nationality: "German",
    date_of_birth: "15/04/1986",
    position: "Goalkeeper",
    photo_fake: "http://www.lataille.fr/wp-content/uploads/2017/02/Manuel-Neuer.jpg",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Eden",
    last_name: "Hazardous",
    email: "eden.hazardous@gmail.com",
    password: "crazyfootball",
    nationality: "Belgian",
    date_of_birth: "15/04/1992",
    position: "Attacker",
    photo_fake: "https://avecdn.akamaized.net/Assets/Images_Upload/Actu24/2019/08/07/6512901e-b8f9-11e9-a15c-668d600b0e1d_web__scale_0.1371167_0.1371167.jpg?maxheight=662&maxwidth=925&scale=both",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Kiki",
    last_name: "Mbappou",
    email: "kiki.mbappou@gmail.com",
    password: "crazyfootball",
    nationality: "French",
    date_of_birth: "15/04/1998",
    position: "Attacker",
    photo_fake: "http://snapchatdestar.fr/assets/img/snapchat/866.png",
    size: 180,
    weight: 75,
    phone_number: "+336000000000"
  },
  {
    first_name: "Neymar",
    last_name: "Cryingboy",
    email: "neymar.dasilva@gmail.com",
    password: "crazyfootball",
    nationality: "Brazilian",
    date_of_birth: "15/04/1992",
    position: "Attacker",
    photo_fake: "https://www.foot01.com/img/images/650x600/2019/Aug/06/psg-al-khelaifi-epuise-barcelone-dans-le-dossier-neymar-icon_win_021218_01_72384,260745.jpg",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Raphaël",
    last_name: "Varan",
    email: "raphael.varan@gmail.com",
    password: "crazyfootball",
    nationality: "French",
    date_of_birth: "15/08/1992",
    position: "Defender",
    photo_fake: "https://sf2.sport365.fr/wp-content/uploads/se/2018/11/raphael-varane-750x410.jpg",
    size: 185,
    weight: 78,
    phone_number: "+336000000000"
  },
  {
    first_name: "Sergio",
    last_name: "Ramoneur",
    email: "sergio.ramoneur@gmail.com",
    password: "crazyfootball",
    nationality: "Spanish",
    date_of_birth: "15/04/1985",
    position: "goalkeeper",
    photo_fake: 'https://dailypost.ng/wp-content/uploads/2019/03/Sergio-Ramos.jpg',
    size: 183,
    weight: 76,
    phone_number: "+336000000000"
  }

]

User.create!(users_attributes)
