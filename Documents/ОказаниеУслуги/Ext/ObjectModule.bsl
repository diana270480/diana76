﻿
Процедура ОбработкаПроведения(Отказ, Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!

	// регистр СтоимостьМатериалов Расход
	Движения.СтоимостьМатериалов.Записывать = Истина;
	
	Для Каждого ТекСтрокаПереченьНоменклатуры Из ПереченьНоменклатуры Цикл
		Движение = Движения.СтоимостьМатериалов.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Период = Дата;
		Движение.Материал = ТекСтрокаПереченьНоменклатуры.Номенклатура;
		Движение.Стоимость = ТекСтрокаПереченьНоменклатуры.Стоимость * ТекСтрокаПереченьНоменклатуры.Количество;
	КонецЦикла;
	 Движения.Продажи.Записывать = истина;
	 Для каждого ТекСтрокаПереченьНоменклатуры Из ПереченьНоменклатуры Цикл
		 
		 Движение = Движения.Продажи.Добавить();
		 Движение.Период = Дата;
		 Движение.Номенклатура = ТекСтрокаПереченьНоменклатуры.Номенклатура;
		 Движение.Клиент = Клиент;
		 Движение.Мастер = Мастер;
		 Движение.Количество = ТекСтрокаПереченьНоменклатуры.Количество;
		 Движение.Выручка = ТекСтрокаПереченьНоменклатуры.Сумма;
		 Движение.Стоимость = ТекСтрокаПереченьНоменклатуры.Стоимость *
		 ТекСтрокаПереченьНоменклатуры.Количество;
	 КонецЦикла;
	 
Движения.Управленческий.Записывать = Истина;	 
	 Движение = Движения.Управленческий.Добавить();
	 Движение.СчетДт = ПланыСчетов.Основной.ДебиторскаяЗадолженность;
	 Движение.СчетКт = ПланыСчетов.Основной.Капитал;
	 Движение.Период= Дата;
	 Движение.Сумма = ТекСтрокаПереченьНоменклатуры.Сумма;
	 Движение.СубконтоДт[ПланыВидовХарактеристик.ВидыСубконто.Клиенты] =
	 Клиент;
	 
	  Движение=Движения.Управленческий.Добавить();
     Движение.СчетДт=ПланыСчетов.Основной.Капитал;
     Движение.СчетКт=ПланыСчетов.Основной.Товары;
      Движение.Период=Дата;
	  Движение.Сумма = ТекСтрокаПереченьНоменклатуры.Сумма;
	  Движение.КоличествоКт = ТекСтрокаПереченьНоменклатуры.Количество;
	  
	  Движение.СубконтоКт[ПланыВидовХарактеристик.ВидыСубконто.Материалы] =
	  ТекСтрокаПереченьНоменклатуры.Номенклатура;


	 
	 
	 
		 

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры
