require 'rails_helper'

RSpec.describe Registration, type: :model do


  describe "association with registration" do
    let(:guest_user) { create :user, email: "guest@user.com" }
    let(:host_user) { create :user, email: "host@user.com" }

    let!(:event) { create :event, user: host_user }
    let!(:registration) { create :registration, event: event, user: guest_user }

    it "has guests" do
      expect(event.guests).to include(guest_user)
    end
  end

  describe "#guest_count?" do
    let!(:guest_validregistration) {create :user, guest_count: event.guests.registration.guest_count(2)}
    let!(:guest_invalidregistration) {create :user, guest_count:event.guests.registration.guest_count(5)}

    it "return true when the guest count is less or equal to 4" do
      expect(guest_validregistration).to eq(true)
      expect(guest_invalidregistration).to eq(false)
    end
  end
end
