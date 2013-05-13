namespace :external_content do
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'
  
  desc "get content from railscasts.com"
  task :railscast_free => :environment do
    for page in 1..35
      parse_data = parse_railscast(page, 'free')
      p "page: #{page}"
      Episode.create(parse_data)
    end
  end
  
  def parse_railscast(page, type = nil)
    parse_data = Array.new
    parse_url = type.nil? ? "http://railscasts.com/?page=#{page}" : "http://railscasts.com/?page=#{page}&type=#{type}"
    
    doc = Nokogiri::HTML(open(parse_url))
    doc.css('.episode .main h2 a').each do |data|
      item_doc = Nokogiri::HTML(open("http://railscasts.com#{data.attr('href')}"))
      item_data = item_doc.css('#episode').first
      p "http://railscasts.com#{data.attr('href')}"
      # get data from free episodes
      
      name        = item_data.css('.info h1').first().content unless item_data.css('.info h1').first().nil?
      permalink   = data.attr('href').gsub!(/\/episodes\//, '')
      description = item_data.css('.info div.description').first().content unless item_data.css('.info div.description').first().nil?
      notes       = item_data.css('div.show_notes').first
      tag_list    = item_data.css('.details a').first().content unless item_data.css('.details a').first().nil?
      
      parse_data << { name: name, permalink: permalink, description: description, tag_list: tag_list, notes: notes }
      
      # create folder, upload data etc
      episode_folder = "public/assets/episodes/#{permalink}"
      create_directory_if_not_exists(Rails.root.join("#{episode_folder}"))
      create_and_write_to_file_if_not_exists(Rails.root.join("#{episode_folder}/notes.html"), notes)
      
      # get image
      image_url = item_data.css('div.screenshot a img').first().attr('src')
      get_image("http://railscasts.com#{image_url}", Rails.root.join("#{episode_folder}/#{permalink}.png"))
      
      Kernel.sleep(2.0)
    end
    parse_data
  end
  
  def create_directory_if_not_exists(directory_name)
    Dir.mkdir(directory_name) unless File.exists?(directory_name)
  end
  
  def create_and_write_to_file_if_not_exists(file_name, content)
    unless File.exists?(file_name)
      File.open(file_name, File::WRONLY|File::CREAT) do |file|
        file.write content
      end
    end
  end
  
  def get_image(path, path_to_save)
    open(path_to_save, 'wb') do |file|
      file << open(path).read
    end
  end
end
