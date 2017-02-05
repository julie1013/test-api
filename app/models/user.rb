# frozen_string_literal: true
class User < ActiveRecord::Base
  include Authentication
  has_many :books, through: :reads
  has_many :reads, dependent: :destroy
end
