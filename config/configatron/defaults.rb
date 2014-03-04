configatron.database = 'sqlite::memory:'

configatron.default_locale = :en
configatron.locales = [:en]

configatron.logging do |l|
  l.enabled = true
  l.level = 'WARN'
  #l.file = 'logs/project.log'
end
