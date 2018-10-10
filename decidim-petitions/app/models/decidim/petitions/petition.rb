module Decidim
  module Petitions
    class Petition < Petitions::ApplicationRecord
      include Decidim::Authorable
      include Decidim::HasComponent
      include Decidim::Publicable
      include Decidim::Resourceable

      mount_uploader :image, Decidim::Petitions::ImageUploader

      def body
        title
      end
    end
  end
end
