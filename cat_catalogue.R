cat_temper <- c("задиристый", "игривый", "спокойный", "ленивый")
cat_color <- c("белый", "серый", "чёрный", "рыжий")
cat_age <- c("кот", "котёнок")
cat_trait <- c("с умными глазами", "с острыми когтями", "с длинными усами")

temper_color <- outer(cat_temper, cat_color, paste)
age_trait <- outer(cat_age, cat_trait, paste)
cat_catalogue <- sort(as.vector(outer(temper_color, age_trait, paste)))
