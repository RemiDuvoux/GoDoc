class Category < ApplicationRecord

  has_many :questions
  has_many :users

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

end
