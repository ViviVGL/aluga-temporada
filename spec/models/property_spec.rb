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

require 'rails_helper'

RSpec.describe Property, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
end
