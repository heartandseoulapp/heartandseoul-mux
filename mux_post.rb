MuxRuby.configure do |config|
  config.username = ENV['MUX_TOKEN_ID']
  config.password = ENV['MUX_TOKEN_SECRET']
end

assets_api = MuxRuby::AssetsApi.new
create_asset = MuxRuby::CreateAssetRequest.new

create_asset.input = [{:url => 'https://muxed.s3.amazonaws.com/leds.mp4'}]
create_asset.playback_policy = "public"
create_response = assets_api.create_asset(create_asset)