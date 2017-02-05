# frozen_string_literal: true
class Read < ActiveRecord::Base
  belongs_to :user, inverse_of: :reads
  belongs_to :book, inverse_of: :reads
end
