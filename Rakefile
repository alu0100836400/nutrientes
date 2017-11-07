# require "bundler/gem_tasks"
# task :default => :spec

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default =>[ :alimento_prueba ]

desc "Ejecutar las espectativas de la clase Dieta"
task :alimento_prueba do
  sh "rspec -I. spec/nutrientes_spec.rb"
end
