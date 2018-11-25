# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Kruger::Client::Request do
  let(:client) { Kruger::Client.new(access_token: 'token') }

  before(:each) do
    stub_request(:get, "#{Kruger::Client::MOI_KRUG_API_URL}#{resource_path}").to_return(body: response.to_json)
  end

  subject { client.get(resource_path) }

  context 'when empty response' do
    let(:resource_path) { '/users/me' }
    let(:response) { '' }

    it { expect(subject.body).to be_empty }
    it { is_expected.to be_instance_of(Kruger::Client::Response) }
  end

  context 'when response is flat hash' do
    let(:resource_path) { '/users/me' }
    let(:response) do
      { 'login' => 'example',
        'email' => 'example@gmail.com',
        'first_name' => 'example',
        'last_name' => 'example',
        'middle_name' => nil,
        'birthday' => '1993-11-17',
        'avatar' => nil,
        'location' => { 'city' => nil, 'country' => nil },
        'gender' => 'male' }
    end

    it { is_expected.to be_instance_of(Kruger::Client::Response) }
    it { expect(subject.body['login']).to eq(response['login']) }
    it { expect(subject.body['email']).to eq(response['email']) }
    it { expect(subject.body['first_name']).to eq(response['first_name']) }
    it { expect(subject.body['last_name']).to eq(response['last_name']) }
    it { expect(subject.body['middle_name']).to be_nil }
    it { expect(subject.body['birthday']).to eq(response['birthday']) }
    it { expect(subject.body['avatar']).to be_nil }
    it { expect(subject.body['location']).to eq(response['location']) }
    it { expect(subject.body['gender']).to eq(response['gender']) }
  end

  context 'when response is nested hash' do
    let(:resource_path) { '/skills' }
    let(:response) do
      { 'skills' => [
        { 'title' => 'Ruby', 'alias_name' => 'ruby' },
        { 'title' => 'Ruby on Rails', 'alias_name' => 'ruby-on-rails' }
      ] }
    end

    it { is_expected.to be_instance_of(Kruger::Client::Response) }
    it { expect(subject.body['skills']).to be_instance_of(Array) }
     it { expect(subject.body['skills'].length).to eq(2) }
    it { expect(subject.body['skills'].first).to eq(response['skills'].first) }
    it { expect(subject.body['skills'].last).to eq(response['skills'].last) }
  end
end
