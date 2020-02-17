# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :cohort_id }
    it { should validate_presence_of :email }
    it { should validate_presence_of :alumni }
  end

  describe 'relationships' do
    it { should belong_to :cohort }
  end
end
