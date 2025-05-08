AVAILABLE_SHIRTS = Rails.root.join("vendor", "habitica-images", "gear", "armor").then do |path|
  if Dir.exist?(path)
    Dir.glob("#{path}/*.png").map { |p| File.basename(p, ".png") }
  else
    Rails.logger.warn "Asset directory not found: #{path}"
    []
  end
end.freeze

AVAILABLE_WEAPONS = Rails.root.join("vendor", "habitica-images", "gear", "weapon").then do |path|
  if Dir.exist?(path)
    Dir.glob("#{path}/*.png").map { |p| File.basename(p, ".png") }
  else
    Rails.logger.warn "Asset directory not found: #{path}"
    []
  end
end.freeze
