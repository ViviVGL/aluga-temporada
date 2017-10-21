# == Schema Information
#
# Table name: properties
#
#  id                :integer          not null, primary key
#  title             :string
#  property_location :string
#  area              :string
#  property_type     :string
#  rooms             :integer
#  maximum_guests    :integer
#  minimum_rent      :integer
#  maximum_rent      :integer
#  daily_rate        :decimal(, )
#  photo             :string
#  description       :string
#  usage_rules       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Property < ApplicationRecord

  validates :title, presence: {
    message: 'Você deve preencher o Título'
  }
  validates :property_location, presence: {
    message: 'Você deve preencher o Local'
  }
  validates :property_type, presence: {
    message: 'Você deve preencher o Tipo do Imóvel'
  }
  validates :daily_rate, presence: {
    message: 'Você deve preencher o Valor da diária'
  }
end
