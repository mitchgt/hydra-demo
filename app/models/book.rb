class Book < ActiveFedora::Base

  has_many :pages

  property :title, predicate: ::RDF::DC.title, multiple: false do |index|
    index.as :stored_searchable
  end
  property :author, predicate: ::RDF::DC.creator, multiple: false do |index|
    index.as :stored_searchable
  end

  property :date, predicate: ::RDF::DC.date, multiple: false do |index|
    index.as :dateable
  end

end
