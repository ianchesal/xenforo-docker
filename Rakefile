require 'rake'

$output_files = FileList['*/**/Dockerfile'].pathmap('.build/%X.dimg')

def output_files_for(file)
  $output_files.select { |f| /#{file}/.match(f) }
end

def output_file_for(file)
  $output_files.detect { |f| /#{file}/.match(f) }
end

task default: :all

desc 'Builds the base image'
task base: output_file_for('base/')

namespace :services do
  desc 'Builds all service images'
  task all: [:base, *output_files_for('services/')]

  services = FileList['services/*/'].pathmap('%{^services/,}X').pathmap('%{/$,}X')
  services.each do |svc|
    desc "Builds an image for #{svc}"
    task svc.to_sym => [:base, output_file_for("services/#{svc}")]
  end
end

namespace :xenforo do
end

desc 'Builds all images in dependency order.'
task all: [:base, 'services:all']

def image_name(src_file)
  dirs = src_file.pathmap('%d').split('/')
  name = dirs[0]
  if dirs[0] == 'development'
    name = dirs[-1]
  elsif dirs[0] == 'services'
    name = "#{dirs[-2]}:#{dirs[-1]}"
  end
  name
end

def build_image(name, src_dir, out_dir)
  sh "docker build -t ianchesal/#{name} #{src_dir} && touch #{out_dir}/Dockerfile.dimg"
end

def source_files_for(file)
  FileList[file.pathmap('%{^\.build/,}d/**/*')]
end

rule '.dimg' => ->(f) { source_files_for(f) } do |t|
  out_dir = t.name.pathmap '%d'
  mkdir_p out_dir
  build_image image_name(t.source), t.source.pathmap('%d'), out_dir
end
