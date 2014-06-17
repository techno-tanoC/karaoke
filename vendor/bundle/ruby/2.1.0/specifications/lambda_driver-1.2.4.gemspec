# -*- encoding: utf-8 -*-
# stub: lambda_driver 1.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "lambda_driver"
  s.version = "1.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tomohito Ozaki"]
  s.date = "2014-02-16"
  s.description = "Drives your code more functioal!"
  s.email = ["ozaki@yuroyoro.com"]
  s.homepage = "http://yuroyoro.github.com/lambda_driver/"
  s.rubygems_version = "2.2.2"
  s.summary = "Drives your code more functioal!"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
