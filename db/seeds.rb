# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


SPECIALTIES = ["Andrologie‎",
"Anesthésie-réanimation‎",
"Cancérologie‎",
"Cardiologie‎",
"Dermatologie‎",
"Endocrinologie‎",
"Médecine esthétique‎",
"Médecine de la fertilité‎",
"Médecine générale‎",
"Génétique médicale‎",
"Gériatrie‎",
"Gynécologie-obstétrique‎",
"Hématologie‎",
"Hépato-gastro-entérologie‎",
"Immunologie‎",
"Médecine interne‎",
"Médecine légale‎",
"Médecine vétérinaire‎",
"Médecine militaire‎",
"Néphrologie‎",
"Neurologie‎",
"Nosologie‎",
"Nutrition‎",
"Oto-rhino-laryngologie‎",
"Pédiatrie‎",
"Médecine physique et réadaptation‎",
"Pneumologie‎",
"Psychiatrie‎",
"Rhumatologie‎",
"Santé sexuelle‎",
"Médecine du sport‎",
"Toxicologie‎",
"Transgenre et médecine‎",
"Traumatologie‎",
"Médecine du travail‎",
"Médecine d'urgence‎",
"Virologie‎"]

SPECIALTIES.each do |specialty|
  Category.create!(name: specialty)
end
