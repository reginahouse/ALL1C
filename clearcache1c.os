ПутьПоиска = АргументыКоманднойСтроки[0];

КоммуникацияСПользователем = Новый Консоль;

КоммуникацияСПользователем.ВывестиСтроку("Вы уверены в том, что хотите очистить кэш?");
КоммуникацияСПользователем.ВывестиСтроку("Нажмите Y [ДА] / any other key [НЕТ]");

Ответ = КоммуникацияСПользователем.Прочитать();
Если Ответ = 89 Тогда
	НайденныеКаталоги = НайтиФайлы(ПутьПоиска, "????????-????-????-????-????????????", Истина);

	КоммуникацияСПользователем.Очистить();

	ПутьПоиска = ПутьПоиска + "\";

	Для каждого НайденныйКаталог Из НайденныеКаталоги Цикл
		ПолныйПуть = НайденныйКаталог.ПолноеИмя;

		ИмяКаталога = СтрЗаменить (ПолныйПуть, ПутьПоиска, "");
		Если СтрНайти(ИмяКаталога, "\") > 0 Тогда
			Продолжить;
		КонецЕсли;
		
		ПутьУдаления = ПутьПоиска + ИмяКаталога;

		Попытка
			УдалитьФайлы(ПутьУдаления);
			КоммуникацияСПользователем.ВывестиСтроку("Удален каталог """ + ПутьУдаления + """,");

		Исключение
			КоммуникацияСПользователем.ВывестиСтроку("Не удален каталог """ + ПутьУдаления + """,");
		КонецПопытки;
	КонецЦикла;
	
	КоммуникацияСПользователем.ВывестиСтроку("Скрипт выполнен!");

Иначе
	КоммуникацияСПользователем.Очистить();
	КоммуникацияСПользователем.ВывестиСтроку("Выполнение скрипта выполнено!");
КонецЕсли;


