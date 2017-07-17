def db_entries_random_order
  @items.find_all('/profile/*').shuffle
end
