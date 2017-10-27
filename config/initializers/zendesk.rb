credentials = YAML.load_file(Rails.root.to_s + '/config/zendesk_credentials.yml')

$client = Zendesk2.new(
  url: "https://#{credentials['subdomain']}.zendesk.com/api/v2",
  username: credentials['username'],
  token: credentials['token']
)
