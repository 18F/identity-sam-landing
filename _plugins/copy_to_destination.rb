Jekyll::Hooks.register :site, :post_write do |site|
  config = site.config['copy_to_destination'] || []
  config.each do |copy|
    src = "#{site.source}/#{copy["source"]}"
    dest = "#{site.dest}/#{copy["target"]}"
    FileUtils.mkdir_p dest
    FileUtils.cp_r Dir.glob(src), dest
  end
end
