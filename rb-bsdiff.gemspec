# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rb-bsdiff}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Todd Fisher"]
  s.date = %q{2009-07-19}
  s.description = %q{Ruby bindings to bindary diff tools bsdiff and bspatch}
  s.email = %q{todd.fisher@gmail.com}
  s.extensions = ["ext/extconf.rb"]
  s.files = ["README", "Rakefile", "rb-bsdiff.gemspec", "test.rb", "ext/b0",
             "ext/b1", "ext/bsdiff.c", "ext/bsdiff.h", "ext/bspatch.c",
             "ext/bspatch.h", "ext/extconf.rb", "ext/rb_bsdiff.c"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/taf2/rb-bsdiff}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rb-bsdiff}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Ruby bindings to bindary diff tools bsdiff and bspatch}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
  end
end

