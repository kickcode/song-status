#!/usr/bin/env ruby

def status(app, var)
  exec_script(app, "#{var} as string")
end

def exec_script(app, command)
  script = `osascript -e 'tell application \"#{app}\" to #{command}'`.gsub("\n", "")
end

def show_track(data)
  return if data.nil?
  puts "#{data[:artist]} - #{data[:track]} (#{data[:state]})"
end

def find_app(info, state)
  app = info.select { |k, v| v[:running] && v[:state] == state }
  return nil if app.empty?
  app.first.last
end

info = ["Spotify", "iTunes"].inject({}) do |hash, app|
  hash[app] = {:running => exec_script("System Events", "count (every process whose name is \"#{app}\")").to_i == 1}
  if hash[app][:running]
    hash[app].merge!(:state => status(app, "player state"))
    if hash[app][:state] == "paused" || hash[app][:state] == "playing"
      hash[app].merge!(:artist => status(app, "artist of current track"), :track => status(app, "name of current track"))
    end
  end
  hash
end

show_track(find_app(info, "playing") || find_app(info, "paused"))