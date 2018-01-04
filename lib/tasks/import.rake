require 'csv'
namespace :import do

	class ProgressBar

	  def initialize(total)
		@total   = total
		@counter = 1
	  end

	  def increment
		complete = sprintf("%#.2f%", ((@counter.to_f / @total.to_f) * 100))
		print "\r\e[0K#{@counter}/#{@total} (#{complete})"
		@counter += 1
	  end

	end

	desc "Import networks from CSV"
	task :networks => :environment do
		CSV.foreach("db/PUFs/Network_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8') do |row|
			network = Network.create!(row.to_hash)
		end
	p "Networks imported"
	end
	
	desc "Import Service Area data from CSV"
	task :serviceareas => :environment do
		progress_bar = ProgressBar.new(CSV.read("db/PUFs/Service_Area_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8').length)				
		CSV.foreach("db/PUFs/Service_Area_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8') do |row|
			servicearea = Servicearea.create!(row.to_hash)
			progress_bar.increment
		end
	p "Service Areas imported"
	end
	
	desc "Import Benefit and Cost Sharing data from CSV"
	task :bencostshares => :environment do
		progress_bar = ProgressBar.new(CSV.read("db/PUFs/Benefits_Cost_Sharing_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8').length)				
		CSV.foreach("db/PUFs/Benefits_Cost_Sharing_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8') do |row|
			bencostshare = Bencostshare.create!(row.to_hash)
			progress_bar.increment
		end
	p "Benefit and Cost Sharing data imported"
	end
	
	desc "Import rates from CSV"
	task :rates => :environment do
		progress_bar = ProgressBar.new(CSV.read("db/PUFs/Rate_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8').length)				
		CSV.foreach("db/PUFs/Rate_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8') do |row|
			rate = Rate.create!(row.to_hash)
			progress_bar.increment
		end
	p "Rates imported"
	end
	
	desc "Import Business Rules from CSV"
	task :businessrules => :environment do
		CSV.foreach("db/PUFs/Business_Rules_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8') do |row|
			businessrule = Businessrule.create!(row.to_hash)
		end
	p "Business Rules imported"
	end
	
	desc "Import Quality data from CSV"
	task :qualities => :environment do
		CSV.foreach("db/PUFs/Quality_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8') do |row|
			quality = Quality.create!(row.to_hash)
		end
	p "Quality data imported"
	end
	
	desc "Import plan Crosswalks from CSV"
	task :crosswalks => :environment do
		progress_bar = ProgressBar.new(CSV.read("db/PUFs/Plan_ID_Crosswalk_PUF.CSV", headers: true, :encoding => 'windows-1251:utf-8').length)				
		CSV.foreach("db/PUFs/Plan_ID_Crosswalk_PUF.CSV", headers: true, :encoding => 'windows-1251:utf-8') do |row|
			crosswalk = Crosswalk.create!(row.to_hash)
			progress_bar.increment
		end
	p "Plan Crosswalks imported"
	end
	
	desc "Import Plans from CSV"
	task :plans => :environment do
		progress_bar = ProgressBar.new(CSV.read("db/PUFs/Plan_Attributes_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8').length)				
		CSV.foreach("db/PUFs/Plan_Attributes_PUF.csv", headers: true, :encoding => 'windows-1251:utf-8') do |row|
			plan = Plan.create!(row.to_hash)
			progress_bar.increment
		end
	end
  
	desc "Import ZIPs table from CSV"
	task :zipmappings => :environment do
		CSV.foreach("db/PUFs/countyzipservice.csv", headers: true, :encoding => 'windows-1251:utf-8') do |row|
			zipmapping = Zipmapping.create!(row.to_hash)
		end
	p "Zip Mappings imported"
	end
	
	desc "Run DB Import"
	task :all => [ :networks, :serviceareas, :bencostshares, :rates, :businessrules, :qualities, :crosswalks, :plans, :zipmappings]
end