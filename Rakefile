# require "bundler/gem_tasks"
# task :default => :spec

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default =>[ :nutrientes_prueba, :lista_prueba, :alimentos_prueba ]

desc "Ejecutar las espectativas de la clase nutrientes"
task :nutrientes_prueba do
  sh "rspec -I. spec/nutrientes_spec.rb"
end

desc "Ejecutar las espectativas de la clase listaDE"
task :lista_prueba do
  sh "rspec -I. spec/listaDE_spec.rb"
end

desc "Ejecutar las espectativas de las clases de alimentos"
task :alimentos_prueba do
  sh "rspec -I. spec/alimentos_spec.rb"
end