module Jekyll

  class FontAwesomeFile < StaticFile
    def destination(dest)
      File.join(*[dest, "fonts/fontawesome", @name].compact)
    end
  end

  class FontAwesomeFonts < Generator
    def generate(site)
      Dir.glob("bower_components/fontawesome/fonts/*").each do |font|
        f = FontAwesomeFile.new(
          site, site.source, File.dirname(font), File.basename(font)
        )
        site.static_files << f
      end

    end

  end
end
