require 'rubygems'
require 'simple-rss'
require 'open-uri'
require 'colorize'

namespace :rss do

  task :latest do
    File.readlines(Dir.pwd + '/rake.symlink/data/feeds.txt').each do |feed|
      rss = SimpleRSS.parse open feed
      puts "+".red * 160
      puts "+ ".red + rss.channel.title.red
      puts "+".red * 160
      rss.entries.each do |entry|
        puts entry.title.blue.on_red.uncolorize
        puts entry.link.colorize(:light_blue).underline
        puts "-"*160
      end
    end
  end

  task :print do
    feed_export = File.open(ENV['HOME'] + "/Desktop/newsfeed.html", "w")

    header = File.readlines(Dir.pwd + '/rake.symlink/template/header.html')
    footer = File.readlines(Dir.pwd + '/rake.symlink/template/footer.html')

    html = Array.new

    html.push(header)

    File.readlines(Dir.pwd + '/rake.symlink/data/feeds.txt').each do |feed|
      rss = SimpleRSS.parse open feed
      output = "<div class=\"page-header\"><h1>" + rss.channel.title + "</h1></div>"
      rss.entries.each do |entry|
        output += entry.title
        output += "<a href=\"" + entry.link + "\" class=\"btn btn-info btn-sm pull-right\" target=\"_blank\">Go!</a>"
        output += "<hr>"
      end

      html.push(output)
    end

    html.push(footer)

    feed_export.puts(html)
    feed_export.close

    puts "File exported to Desktop".green
  end

end
