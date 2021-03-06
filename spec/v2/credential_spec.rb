describe AnsibleTowerClient::CredentialV2 do
  let(:api)                        { AnsibleTowerClient::Api.new(connection, 2) }
  let(:connection)                 { AnsibleTowerClient::MockApi.new }
  let(:raw_instance)               { build(:response_instance, :credential, :klass => described_class) }

  include_examples "Crud Methods"

  it "#initialize instantiates an #{described_class} from a hash" do
    obj = api.credentials.all.detect { |cred| cred.name == 'NuageGUI' }

    expect(obj).to                    be_a described_class
    expect(obj.id).to                 be_a Integer
    expect(obj.url).to                be_a String
    expect(obj.name).to               be_a String
    expect(obj.credential_type_id).to be_a Integer
    expect(obj.inputs).to             be_a AnsibleTowerClient::CredentialV2::Inputs
    expect(obj.inputs.size).to        eq 5
  end

  context 'override_raw_attributes' do
    let(:obj) { described_class.new(instance_double("Faraday::Connection"), raw_instance) }
    let(:instance_api) { obj.instance_variable_get(:@api) }

    it 'translates :organization to :organization_id for update_attributes' do
      raw_instance[:organization_id] = 10
      expect(instance_api).to receive(:patch).and_return(instance_double("Faraday::Result", :body => raw_instance.to_json))
      expect(obj.update_attributes(:organization => '5')).to eq true
      expect(obj.organization_id).to eq '5'
    end
  end
end
