require 'numbers_and_words'

I18n.with_locale(:en) do
  puts (1..1000).to_a.to_words(hundreds_with_union: true).join.delete(' -').length
end