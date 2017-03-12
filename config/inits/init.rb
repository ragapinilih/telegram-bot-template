require 'dotenv/load'


$telegram_bot_token = ENV['BOT_TOKEN']
$namespace = File.basename(Dir.getwd)
$namespace_class = $namespace.camelize
$bot_username = ENV['BOT_USERNAME']
$redis = Redis.new
$logger = Logger.new("#{$namespace}.log", 'weekly')
SuckerPunch.logger = Logger.new("#{$namespace}_sucker_punch.log", 'weekly')
Cachy.cache_store = $redis
$admin_id = ENV['ADMIN_TELEGRAM_ID'].to_i
