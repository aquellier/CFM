puts 'Creating fields...'
fields_attributes = [
  {
    name:"UrbanSoccer - Angers",
    location: "UrbanSoccer - Angers, Avenue du Général Patton, Angers, France"
  },
  {
    name:"UrbanSoccer - Asnières",
    location: "UrbanSoccer, Rue Henri Vuillemin, Gennevilliers, France"
  },
  {
    name:"UrbanSoccer - Bordeaux Mérignac",
    location: "UrbanSoccer - Bordeaux Mérignac, Rue Archimède, Mérignac, France"
  },
  {
    name:"UrbanSoccer - Bordeaux Pessac",
    location: "UrbanSoccer Bordeaux Pessac, Avenue Louis de Broglie, Pessac, France"
  },
  {
    name:"UrbanSoccer - Clermont Ferranc",
    location: "UrbanSoccer - Clermont Ferrand, Rue des Varennes, Aubière, France"
  },
  {
    name:"UrbanSoccer - Dijon",
    location: "UrbanSoccer - Dijon, Rue de Cracovie, Saint-Apollinaire, France"
  },
  {
    name:"UrbanSoccer - Every Courcouronnes",
    location: "UrbanSoccer - Evry, Avenue du Bois de l'Épine, Courcouronnes, France"
  },
  {
    name:"UrbanSoccer - Grenoble",
    location: "UrbanSoccer - Grenoble"
  },
  {
    name:"UrbanSoccer - Guyancourt",
    location: "UrbanSoccer - Grenoble, Boulevard des Alpes, Meylan, France"
  },
  {
    name:"UrbanSoccer - La Défense",
    location: "UrbanSoccer - La Défense, Avenue François Arago, Nanterre, France"
  },
  {
    name:"UrbanSoccer - Lille Bondues",
    location: "UrbanSoccer - Lille Bondues, Chemin des Grands Obeaux, Bondues, France"
  },
  {
    name:"UrbanSoccer - Lille Lezennes",
    location: "UrbanSoccer - Lille Lezennes, Rue Paul Langevin Zone Industrielle du Hellu, Lezennes, France"
  },
  {
    name:"UrbanSoccer - Lyon Barolles",
    location: "UrbanSoccer - Lyon Barolles, Chemin de Sacuny, Brignais, France"
  },
  {
    name:"UrbanSoccer - Lyon Beynost",
    location: "UrbanSoccer - Lyon Beynost, Allée du Pré Caillat, Beynost, France"
  },
  {
    name:"UrbanSoccer - Lyon Parilly",
    location: "UrbanSoccer - Lyon Parilly, Rue Jean Zay, Saint-Priest, France"
  },
  {
    name:"UrbanSoccer - Marne la Vallée",
    location: "UrbanSoccer - Marne la Vallée, Rue de la Maison Rouge, Lognes, France"
  },
  {
    name:"UrbanSoccer - Meudon",
    location: "UrbanSoccer Meudon, Route Forestière de la Mare Adam, Meudon, France"
  },
  {
    name:"UrbanSoccer - Montpellier",
    location: "UrbanSoccer - Montpellier, Avenue Marcel Dassault, Castelnau-le-Lez, France"
  },
  {
    name:"UrbanSoccer - Nantes",
    location: "UrbanSoccer - Nantes, Route de Clisson, Saint-Sébastien-sur-Loire, France"
  },
  {
    name:"UrbanSoccer - Orsay",
    location: "UrbanSoccer - Orsay, Rue Nicolas Appert, Orsay, France"
  },
  {
    name:"UrbanSoccer - Porte d'Aubervilliers",
    location: "UrbanSoccer - Porte d'Aubervilliers, Avenue Victor Hugo, Aubervilliers, France"
  },
  {
    name:"UrbanSoccer - Porte d'Ivry",
    location: "UrbanSoccer - Porte d'Ivry, Rue Jules Vanzuppe, Ivry-sur-Seine, France"
  },
  {
    name:"UrbanSoccer - Puteaux",
    location: "UrbanSoccer - Puteaux, Rue de la République, Puteaux, France"
  },
  {
    name:"UrbanSoccer - Rennes Cap Malo",
    location: "UrbanSoccer - Rennes Cap Malo, Avenue du Phare du Grand Lejeon, Melesse, France"
  },
  {
    name:"UrbanSoccer - Rennes Vern",
    location: "UrbanSoccer Rennes Vern, Rue de Chantepie, Vern-sur-Seiche, France"
  },
  {
    name:"UrbanSoccer - Saint Étienne",
    location: "UrbanSoccer - Saint Etienne, Allée Jean Lauer, Saint-Étienne, France"
  },
  {
    name:"UrbanSoccer - Strasbourg",
    location: "UrbanSoccer - Strasbourg, Chemin Haut, Strasbourg, France"
  },
  {
    name:"UrbanSoccer - Toulouse Montaudran",
    location: "UrbanSoccer - Toulouse Montaudran, Chemin Carrosse, Toulouse, France"
  },
  {
    name:"UrbanSoccer - Toulouse Sept Deniers",
    location: "UrbanSoccer - Toulouse Sept Deniers, Rue de l'Egalite, Toulouse, France"
  },
  {
    name:"UrbanSoccer - Villeneuve Loubet",
    location: "UrbanSoccer - Villeneuve Loubet, Route de Grasse, Villeneuve-Loubet, France"
  }
]
Field.create!(fields_attributes)
puts "Created #{Field.count} fields!"
