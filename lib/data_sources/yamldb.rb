=begin
class HRDataSource < ::Nanoc::DataSource
  identifier :hr

  def up
    @db = Sequel.sqlite('test.db')
  end

  def down
    @db.disconnect
  end

  def items
    @db[:employees].map do |employee|
      new_item(
        '',
        employee,
        "/employees/#{employee[:id]}"
      )
    end
  end
end
=end

=begin
class ReleaseNotesDataSource < Nanoc::DataSource
  identifier :release_notes

  def items
    content = File.read("/home/leowzukw/Documents/code/alcotest/README.md")

    item = new_item(
      content,
      { title: 'Release notes' },
      Nanoc::Identifier.new('/release-notes.md'),
    )

    [item]
  end
end
=end

require 'yaml'

# Parameters
DBDir = "./yml-db"

class YamlDB < Nanoc::DataSource
  identifier :ydb

  def items
    # XXX Not checking if it is a file
    ymls = Dir.entries(DBDir).select { |f| f =~ /.*\.yml$/ }
             .map { |yml|
      y=YAML.load_file(DBDir + '/' + yml) # XXX Dirty
      y[:fileName]=File.basename(yml, File.extname(yml))
      y
    }

    ymls.map do |yml|
      new_item(
      'ymldb',
      yml,
      Nanoc::Identifier.new("/profile/" + yml[:fileName].to_s),
    )
    end

  end
end
