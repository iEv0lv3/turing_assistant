# frozen_string_literal: true

class Student < ApplicationRecord
  validates_presence_of :first_name, :last_name, :cohort_id, :email, :alumni
  validates :cohort_id, inclusion: { in: Cohort.list_ids, message: '%(value) is not a valid cohort' }

  belongs_to :cohort
end
