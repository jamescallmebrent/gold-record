# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gold_record/version"

Gem::Specification.new do |s|
  s.name = %q{gold-record}
  s.version = GoldRecord::VERSION::STRING

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Randy Reddig"]
  s.date = %q{2011-02-09}
  s.description = %q{Unobtrusive binary UUID support for ActiveRecord. Supports migrations, reflections, assocations and SchemaDumper.}
  s.email = %q{randy@shaderlab.com}
  s.extra_rdoc_files = ["HISTORY.rdoc", "LICENSE.txt", "README.rdoc"]
  s.files = ["Rakefile", "LICENSE.txt", "README.rdoc", "HISTORY.rdoc", "lib/gold-record.rb", "lib/gold_record", "lib/gold_record/base.rb", "lib/gold_record/connection_adapters", "lib/gold_record/connection_adapters/mysql_adapter.rb", "lib/gold_record/fixtures.rb", "lib/gold_record/record_identifier.rb", "lib/gold_record/uuid.rb", "lib/gold_record/version.rb", "lib/gold_record.rb", "test/cases", "test/cases/aaa_create_tables_test.rb", "test/cases/acts_as_gold_record_test.rb", "test/cases/associations", "test/cases/associations/belongs_to_integer_association_test.rb", "test/cases/associations/belongs_to_uuid_association_test.rb", "test/cases/associations/habtm_integer_to_integer_association_test.rb", "test/cases/associations/habtm_integer_to_uuid_association_test.rb", "test/cases/associations/habtm_uuid_to_uuid_association_test.rb", "test/cases/associations/has_many_integer_assocation_test.rb", "test/cases/associations/has_many_uuid_association_test.rb", "test/cases/coerce_test.rb", "test/cases/find_test.rb", "test/cases/generate_id_test.rb", "test/cases/helper.rb", "test/cases/hex_test.rb", "test/cases/pad_16_test.rb", "test/cases/random_generate_test.rb", "test/cases/to_param_test.rb", "test/cases/to_uuid_test.rb", "test/cases/urlsafe_base64_test.rb", "test/cases/zzz_migration_test.rb", "test/config.rb", "test/connection.rb", "test/fixtures", "test/fixtures/albums.yml", "test/fixtures/artists.yml", "test/fixtures/fans.yml", "test/fixtures/labels.yml", "test/fixtures/record_stores.yml", "test/fixtures/songs.yml", "test/models", "test/models/album.rb", "test/models/artist.rb", "test/models/fan.rb", "test/models/label.rb", "test/models/record_store.rb", "test/models/song.rb", "test/schema", "test/schema/schema.rb"]
  s.homepage = %q{http://github.com/ydnar/gold-record}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{gold-record}
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Unobtrusive binary UUID support for ActiveRecord}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["~> 2.3"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 2.3"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 2.0.0"])
    else
      s.add_dependency(%q<activerecord>, ["~> 2.3"])
      s.add_dependency(%q<activesupport>, ["~> 2.3"])
      s.add_dependency(%q<uuidtools>, [">= 2.0.0"])
    end
  else
    s.add_dependency(%q<activerecord>, ["~> 2.3"])
    s.add_dependency(%q<activesupport>, ["~> 2.3"])
    s.add_dependency(%q<uuidtools>, [">= 2.0.0"])
  end
end
