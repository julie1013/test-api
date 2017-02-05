# frozen_string_literal: true
class Book < ActiveRecord::Base
  has_many :users, through: :reads
  has_many :reads, dependent: :destroy
end
