cat_temper <- c("����������", "�������", "���������", "�������")
cat_color <- c("�����", "�����", "������", "�����")
cat_age <- c("���", "������")
cat_trait <- c("� ������ �������", "� ������� �������", "� �������� �����")

temper_color <- outer(cat_temper, cat_color, paste)
age_trait <- outer(cat_age, cat_trait, paste)
cat_catalogue <- sort(as.vector(outer(temper_color, age_trait, paste)))
