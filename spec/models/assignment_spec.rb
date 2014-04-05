require 'spec_helper'

describe Assignment do
  let(:reference_models) do
    User.create(name:"Brian")
    Client.create(name: "Client")
    Role.create(name: "Role")
  end

  describe 'validations' do
    describe 'presence' do
      context 'when given nothing' do
        it 'fails to create a record' do
          assignment = Assignment.create
          expect(assignment).to_not be_valid
          expect(Assignment.count).to eq 0
          expect(assignment.errors.full_messages).to include("User can't be blank", "Client can't be blank", "Role can't be blank")
        end
      end
      context 'when given two of three validations' do
        it 'fails to create a record' do
          reference_models
          assignment = Assignment.create(user: User.first, client: Client.first)
          expect(assignment).to_not be_valid
          expect(Assignment.count).to eq 0
          expect(assignment.errors.full_messages).to include("Role can't be blank")
        end
      end
      context 'when given all three validations' do
        it 'creates a record' do
          reference_models
          assignment = Assignment.create(user: User.first, client: Client.first, role: Role.first)
          expect(assignment).to be_valid
          expect(Assignment.count).to eq 1
        end
      end
    end
  end
end
