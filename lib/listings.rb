def db_entries_random_order
  @items.find_all('/profile/*').shuffle
end

def db_entries_by_lang(lang)
  @items.find_all('/profile/*')
    .select { |i| i[:lang].include? lang }
end
