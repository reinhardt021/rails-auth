require 'rails_helper'

RSpec.describe User, type: :model do
  describe "db structure" do
    it { is_expected.to have_db_column(:email).of_type(:string) }
    it { is_expected.to have_db_column(:password_digest).of_type(:string) }

    it { is_expected.to have_db_index(:email) }
  end
end
