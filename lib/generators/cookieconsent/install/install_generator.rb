module Cookieconsent
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def add_javascript
        append_file 'app/assets/javascripts/application.js', "//= require cookieconsent\n"
      end
      def add_stylesheet
        inject_into_file 'app/assets/stylesheets/application.css', "*= require cookieconsent\n", before: /\*\//, verbose: true
      end
    end
  end
end
