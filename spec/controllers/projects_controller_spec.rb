require 'rails_helper'

describe ProjectsController do
  let(:valid_attributes) { { name: 'devise' } }
  let(:invalid_attributes) { { name: '' } }
  let(:valid_session) { {} }
  subject { response }

  describe 'GET #index' do
    before  do
      Project.create! valid_attributes
      get :index, params: {}, session: valid_session
    end

    it { is_expected.to have_http_status :ok }
  end

  describe 'GET #show' do
    before do
      project = Project.create! valid_attributes
      get :show, params: {id: project.to_param}, session: valid_session
    end

    it { is_expected.to have_http_status :ok }
  end

  describe 'GET #new' do
    before do
      get :new, params: {}, session: valid_session
    end

    it { is_expected.to have_http_status :ok }
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Project' do
        expect {
          post :create, params: { project: valid_attributes }, session: valid_session
        }.to change{ Project.count }.by 1
      end

      describe 'response' do
        before do
          post :create, params: { project: valid_attributes }, session: valid_session
        end

        it { is_expected.to redirect_to Project.last }
      end
    end

    context 'with invalid params' do
      it 'creates a new Project' do
        expect {
          post :create, params: { project: invalid_attributes }, session: valid_session
        }.to change{ Project.count }.by 0
      end
    end
  end
end
