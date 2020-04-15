require_relative 'application_record'

class SolarSystemApi < ApplicationRecord
  validates_presence_of :object_id
  validates_presence_of :eng_name
end
