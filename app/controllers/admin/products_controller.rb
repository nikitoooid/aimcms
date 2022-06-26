class Admin::ProductsController < Admin::MainController
  
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    @raw_xml = '<yml_catalog date="2022-06-23 00:00">
    <shop>
    <name>KTG</name>
    <company>KTG</company>
    <url>https://b2b.ktg.in.ua</url>
    <currencies>
    <currency id="UAH" rate="1"/>
    </currencies>
    <categories>
    <category id="94">Mitsubishi Electric</category>
    <category id="145" parentId="94">Бытовые кондиционеры</category>
    <category id="149" parentId="145">Инверторные</category>
    <category id="159" parentId="149">Премиум (LN)</category>
    <category id="156" parentId="149">Делюкс (FH)</category>
    <category id="158" parentId="149">Дизайн (EF)</category>
    <category id="151" parentId="149">Стандарт (AP)</category>
    <category id="157" parentId="149">Стандарт (SF/GF)</category>
    <category id="150" parentId="149">Классик (HR)</category>
    <category id="152" parentId="149">Бриз (BT)</category>
    <category id="160" parentId="149">Классик (DM/HJ)</category>
    <category id="153" parentId="149">Напольные (MFZ)</category>
    <category id="154" parentId="149">Кассетные 1х-сторонние (MLZ)</category>
    <category id="155" parentId="154">Декоративные панели</category>
    <category id="146" parentId="145">Только холод (без инвертора)</category>
    <category id="147" parentId="146">Аксессуары</category>
    <category id="161" parentId="94">Мультисистемы с инвертором</category>
    <category id="372" parentId="161">Наружні блоки MXZ (холодоагент R410A)</category>
    <category id="373" parentId="161">Наружні блоки MXZ (холодоагент R32)</category>
    <category id="374" parentId="373">Мультисистеми «КЛАСИК»</category>
    <category id="163" parentId="94">Полупромышленные кондиционеры</category>
    <category id="164" parentId="163">Внутренние блоки</category>
    <category id="165" parentId="164">Канальные бытовые (SEZ)</category>
    <category id="166" parentId="164">Кассетные бытовые 4х-сторонние (SLZ)</category>
    <category id="167" parentId="164">Кассетные 4х-сторонние (PLA)</category>
    <category id="168" parentId="164">Настенные (PKA)</category>
    <category id="169" parentId="164">Подвесные (PCA)</category>
    <category id="171" parentId="164">Напольные (PSA)</category>
    <category id="170" parentId="164">Канальные (PEA-PEAD)</category>
    <category id="172" parentId="163">Наружные блоки</category>
    <category id="174" parentId="172">Серия Deluxe Power Inverter (PUHZ-ZRP)</category>
    <category id="175" parentId="172">Серия Standard Inverter (PUHZ-P, SUZ)</category>
    <category id="173" parentId="172">Серия Zubadan Inverter (PUHZ-SHW)</category>
    <category id="177" parentId="172">Серия Zubadan Power Inverter (PUHZ-HW/SW)</category>
    <category id="176" parentId="172">Без инвертора - Только охлаждение (PU-P)</category>
    <category id="178" parentId="163">Гидромодули (ECODAN)</category>
    <category id="179" parentId="178">Гидромодуль с баком ГВС</category>
    <category id="180" parentId="178">Гидромодуль без бака ГВС</category>
    <category id="212" parentId="94">Приточно-вытяжные установки</category>
    <category id="215" parentId="212">Бытовая серия (VL)</category>
    <category id="216" parentId="212">Вентустановки (LGH)</category>
    <category id="214" parentId="212">Фреоновая секция (GUG)</category>
    <category id="213" parentId="212">Пульты управления</category>
    <category id="217" parentId="212">Опции (Аксессуары)</category>
    <category id="141" parentId="94">Системы управления</category>
    <category id="144" parentId="141">Пульты управления</category>
    <category id="143" parentId="141">Интерфейс</category>
    <category id="142" parentId="141">Контроллер</category>
    <category id="181" parentId="94">Декоративные панели</category>
    <category id="182" parentId="181">Аксессуары</category>
    <category id="162" parentId="94">Аксессуары</category>
    <category id="12">Sakata</category>
    <category id="26" parentId="12">Бытовая серия</category>
    <category id="33" parentId="26">Без инвертора</category>
    <category id="34" parentId="33">KITTO on off</category>
    <category id="28" parentId="26">Инвертор</category>
    <category id="379" parentId="28">HEAT PUMP nordic inverter 32</category>
    <category id="30" parentId="28">HIKARU inverter</category>
    <category id="27" parentId="26">Мульти сплит</category>
    <category id="380" parentId="26">Комплектуючі</category>
    <category id="13" parentId="12">Полупромышленная серия</category>
    <category id="20" parentId="13">Без инвертора</category>
    <category id="22" parentId="20">Канальные</category>
    <category id="23" parentId="20">Кассетные 4х-сторонние</category>
    <category id="24" parentId="20">Напольно-потолочные</category>
    <category id="21" parentId="20">Универсальные наружные блоки</category>
    <category id="14" parentId="13">Инвертор</category>
    <category id="15" parentId="14">Канальные</category>
    <category id="16" parentId="14">Кассетные 4х-сторонние</category>
    <category id="17" parentId="14">Напольно-потолочные</category>
    <category id="18" parentId="14">Универсальные наружные блоки</category>
    <category id="19" parentId="13">Комплектующие</category>
    <category id="37" parentId="12">Приточно-вытяжные установки</category>
    <category id="70">Lanzkraft</category>
    <category id="85" parentId="70">Бытовая серия</category>
    <category id="86" parentId="85">Без инвертора</category>
    <category id="88" parentId="86">INNOVATION on off</category>
    <category id="388" parentId="86">SIMPLE OB panel on off</category>
    <category id="89" parentId="85">Инвертор</category>
    <category id="375" parentId="89">INNOVATION inverter R32</category>
    <category id="71" parentId="70">Полупромышленная серия</category>
    <category id="77" parentId="71">Без инвертора</category>
    <category id="78" parentId="77">Канальные</category>
    <category id="79" parentId="77">Кассетные 4х-сторонние</category>
    <category id="80" parentId="77">Напольно-потолочные</category>
    <category id="81" parentId="77">Универсальные наружные блоки</category>
    <category id="72" parentId="71">Инвертор</category>
    <category id="73" parentId="72">Канальные</category>
    <category id="74" parentId="72">Кассетные 4ч-сторонние</category>
    <category id="75" parentId="72">Напольно-потолочные</category>
    <category id="76" parentId="72">Универсальные наружные блоки</category>
    <category id="82" parentId="71">Комплектующие</category>
    <category id="358">Розхідні матеріали</category>
    <category id="359" parentId="358">Кронштейны</category>
    <category id="360" parentId="358">Труба медная</category>
    <category id="377" parentId="360">CUPRUMFOMA</category>
    <category id="376" parentId="360">Foma</category>
    <category id="361" parentId="358">Теплоизоляция</category>
    </categories>
    <offers>
    <offer id="6269" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6269</url>
    <price>19305.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6269/639bbc6a4c-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN25VGB</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.029</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6270" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6270</url>
    <price>19470.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6270/483575a98f-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN25VGR</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Красный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6271" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6271</url>
    <price>18942.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6271/ff050426c3-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN25VGV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый перламутр</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.029</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6272" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6272</url>
    <price>16071.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6272/c4799d3cf5-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN25VGW</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">14.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6281" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6281</url>
    <price>27126.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6281/d6d33d2eeb-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN25VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.485</param>
    <param name="Потребляемая мощность нагр., кВт">0.58</param>
    <param name="Заводская заправка хладогентом">1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">800х285х550</param>
    <param name="Вес нетто, кг">33</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6266" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6266</url>
    <price>35706.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6266/77236891a1-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN25VGHZ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.485</param>
    <param name="Потребляемая мощность нагр., кВт">0.58</param>
    <param name="Заводская заправка хладогентом">1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">34</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7544" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7544</url>
    <price>20559.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7544/55dee88237-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN25VG2B</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7545" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7545</url>
    <price>20724.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7545/f375e807fd-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN25VG2R</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Красный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7546" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7546</url>
    <price>20163.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7546/a2b82bbd7e-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN25VG2V</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый перламутр</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7547" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7547</url>
    <price>17094.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7547/57b9bcc34d-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN25VG2W</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">14.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7548" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7548</url>
    <price>28875.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7548/f71e783374-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN25VG2</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.44</param>
    <param name="Потребляемая мощность нагр., кВт">0.55</param>
    <param name="Заводская заправка хладогентом">0.8</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">33</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7549" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7549</url>
    <price>38016.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7549/5ef343291f-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN25VGHZ2</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.45</param>
    <param name="Потребляемая мощность нагр., кВт">0.55</param>
    <param name="Заводская заправка хладогентом">0.85</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) | 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">34</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6273" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6273</url>
    <price>23892.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6273/cd89c88a10-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN35VGB</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.024</param>
    <param name="Потребляемая мощность нагр., кВт">0.029</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6274" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6274</url>
    <price>24090.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6274/941c6d52d4-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN35VGR</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Красный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6275" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6275</url>
    <price>23529.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6275/7bc342e8cd-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN35VGV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый перламутр</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.024</param>
    <param name="Потребляемая мощность нагр., кВт">0.029</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6276" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6276</url>
    <price>19998.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6276/4a31f156e9-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN35VGW</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.024</param>
    <param name="Потребляемая мощность нагр., кВт">0.029</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">14.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6282" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6282</url>
    <price>31911.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6282/1bff191411-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN35VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.82</param>
    <param name="Потребляемая мощность нагр., кВт">0.8</param>
    <param name="Заводская заправка хладогентом">1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">34</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6267" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6267</url>
    <price>43560.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6267/8d21d7bbe9-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN35VGHZ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.82</param>
    <param name="Потребляемая мощность нагр., кВт">0.8</param>
    <param name="Заводская заправка хладогентом">1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">34</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7550" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7550</url>
    <price>25443.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7550/2ea7087adb-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN35VG2B</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7551" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7551</url>
    <price>25641.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7551/e104bef756-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN35VG2R</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Красный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7552" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7552</url>
    <price>25047.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7552/0174f46858-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN35VG2V</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый перламутр</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7553" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7553</url>
    <price>21285.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7553/17d8c17882-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN35VG2W</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">14.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7559" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7559</url>
    <price>33990.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7559/454483bb69-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN35VG2</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.82</param>
    <param name="Потребляемая мощность нагр., кВт">0.8</param>
    <param name="Заводская заправка хладогентом">0.85</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">34</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7560" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7560</url>
    <price>46365.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7560/c36a022504-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN35VGHZ2</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.82</param>
    <param name="Потребляемая мощность нагр., кВт">0.8</param>
    <param name="Заводская заправка хладогентом">0.85</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) | 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">34</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6277" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6277</url>
    <price>33198.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6277/0be9b733b5-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN50VGB</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.029</param>
    <param name="Потребляемая мощность нагр., кВт">0.034</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6278" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6278</url>
    <price>33363.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6278/f2678a1a1a-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN50VGR</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Красный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.029</param>
    <param name="Потребляемая мощность нагр., кВт">0.034</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6279" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6279</url>
    <price>32835.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6279/1a43fac920-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN50VGV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый перламутр</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.029</param>
    <param name="Потребляемая мощность нагр., кВт">0.034</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6280" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6280</url>
    <price>28281.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6280/b576ef9491-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN50VGW</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.029</param>
    <param name="Потребляемая мощность нагр., кВт">0.034</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">14.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6283" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6283</url>
    <price>45045.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6283/b40fde9ed2-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN50VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.38</param>
    <param name="Потребляемая мощность нагр., кВт">1.48</param>
    <param name="Заводская заправка хладогентом">1.25</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">800x285x714</param>
    <param name="Вес нетто, кг">40</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6268" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6268</url>
    <price>65208.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6268/4ab90fc6c6-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN50VGHZ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.38</param>
    <param name="Потребляемая мощность нагр., кВт">1.48</param>
    <param name="Заводская заправка хладогентом">1.45</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">55</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7554" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7554</url>
    <price>35343.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7554/757546bfad-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN50VG2B</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7555" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7555</url>
    <price>35508.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7555/c30125989b-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN50VG2R</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Красный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7556" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7556</url>
    <price>34947.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7556/86213bbbb1-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN50VG2V</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый перламутр</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7557" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7557</url>
    <price>30129.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7557/32616d19cc-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN50VG2W</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">14.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7558" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7558</url>
    <price>47949.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7558/0736b2972d-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN50VG2</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.38</param>
    <param name="Потребляемая мощность нагр., кВт">1.48</param>
    <param name="Заводская заправка хладогентом">1.25</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">800x285x714</param>
    <param name="Вес нетто, кг">40</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6285" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6285</url>
    <price>40392.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6285/e6c7448302-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN60VGB</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6287" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6287</url>
    <price>40029.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6287/3aded0b707-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN60VGV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый перламутр</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6288" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6288</url>
    <price>34848.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6288/6eef0cc2e9-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN60VGW</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">14.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6284" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6284</url>
    <price>57651.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6284/66f67d26aa-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-LN60VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.79</param>
    <param name="Потребляемая мощность нагр., кВт">1.81</param>
    <param name="Заводская заправка хладогентом">1.45</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">55</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7561" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7561</url>
    <price>42999.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7561/cf2969098f-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN60VG2B</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7562" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7562</url>
    <price>43164.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7562/7c71fba882-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN60VG2R</name>
    <description>
    Бытовой кондиционер, внутрений настенный (Deluxe Inverter)
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Красный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7563" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7563</url>
    <price>42603.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7563/84f2a716b6-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN60VG2V</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый перламутр</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7564" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7564</url>
    <price>37092.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>159</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7564/f68cd9f480-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-LN60VG2W</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">PREMIUM INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">890x233x307</param>
    <param name="Вес нетто, кг">14.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4646" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4646</url>
    <price>13134.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>156</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4646/e6add65191-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-FH25VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4)/9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DELUXE INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.029</param>
    <param name="Потребляемая мощность нагр., кВт">0.029</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)/9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">20</param>
    <param name="Размеры ДхВхГ, мм">925x234x305</param>
    <param name="Вес нетто, кг">13.5</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4648" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4648</url>
    <price>28545.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>156</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4648/fc4eda93bd-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-FH25VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4)/9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DELUXE INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.485</param>
    <param name="Потребляемая мощность нагр., кВт">0.58</param>
    <param name="Заводская заправка хладогентом">1.15</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)/9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4650" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4650</url>
    <price>37521.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>156</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4650/4348de14ff-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-FH25VEHZ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4)/9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DELUXE INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.485</param>
    <param name="Потребляемая мощность нагр., кВт">0.58</param>
    <param name="Заводская заправка хладогентом">1.15</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)/9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4647" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4647</url>
    <price>16335.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>156</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4647/4b259b7f1b-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-FH35VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4)/9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DELUXE INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.029</param>
    <param name="Потребляемая мощность нагр., кВт">0.029</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)/9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">21</param>
    <param name="Размеры ДхВхГ, мм">925x234x305</param>
    <param name="Вес нетто, кг">13.5</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4649" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4649</url>
    <price>33528.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>156</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4649/9fb9071e98-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-FH35VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4)/9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DELUXE INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.82</param>
    <param name="Потребляемая мощность нагр., кВт">0.8</param>
    <param name="Заводская заправка хладогентом">1.15</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)/9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4651" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4651</url>
    <price>45804.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>156</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4651/e228682542-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-FH35VEHZ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4)/9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DELUXE INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.82</param>
    <param name="Потребляемая мощность нагр., кВт">0.8</param>
    <param name="Заводская заправка хладогентом">1.15</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)/9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4652" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4652</url>
    <price>23331.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>156</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4652/3c1aa9a7ad-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-FH50VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4)/12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DELUXE INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.031</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)/12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">27</param>
    <param name="Размеры ДхВхГ, мм">925x234x305</param>
    <param name="Вес нетто, кг">13.5</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4653" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4653</url>
    <price>47949.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>156</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4653/f8c6c7a3a3-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-FH50VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4)/12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DELUXE INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.38</param>
    <param name="Потребляемая мощность нагр., кВт">1.55</param>
    <param name="Заводская заправка хладогентом">1.55</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)/12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">55</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4654" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4654</url>
    <price>65175.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>156</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4654/91cc739b93-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-FH50VEHZ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4)/12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DELUXE INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.38</param>
    <param name="Потребляемая мощность нагр., кВт">1.55</param>
    <param name="Заводская заправка хладогентом">1.55</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)/12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">55</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4694" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4694</url>
    <price>10438.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4694/a0a2043f6b-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF22VE3B</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.2</param>
    <param name="Производительность нагр., кВт">0.027</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.027</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4692" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4692</url>
    <price>10438.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4692/844f410eac-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF22VE3W</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.2</param>
    <param name="Производительность нагр., кВт">0.027</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.027</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4689" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4689</url>
    <price>12276.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4689/5358619133-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF22VGKB</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.2</param>
    <param name="Производительность нагр., кВт">0.027</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.027</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4690" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4690</url>
    <price>12804.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4690/e5b54ca0fd-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF22VGKS</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.2</param>
    <param name="Производительность нагр., кВт">0.027</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Серебристый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.027</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4691" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4691</url>
    <price>12276.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4691/cd928def08-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF22VGKW</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.2</param>
    <param name="Производительность нагр., кВт">0.027</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.027</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4673" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4673</url>
    <price>12606.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4673/7988f974a8-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF25VGKB</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">0.027</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.027</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4674" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4674</url>
    <price>13167.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4674/ed06d658bb-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF25VGKS</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">0.027</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Серебристый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.027</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4675" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4675</url>
    <price>12606.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4675/4f5ff8b8fa-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF25VGKW</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">0.027</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.027</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4685" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4685</url>
    <price>24981.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4685/d197363880-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-EF25VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.545</param>
    <param name="Потребляемая мощность нагр., кВт">0.7</param>
    <param name="Заводская заправка хладогентом">0.62</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4699" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4699</url>
    <price>14620.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4699/e2ad5dafe9-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF35VE3S</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">0.031</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Серебристый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4700" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4700</url>
    <price>13294.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4700/5409078b89-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF35VE3W</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">0.031</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4676" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4676</url>
    <price>15939.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4676/ab37dfe275-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF35VGKB</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">0.031</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4677" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4677</url>
    <price>16731.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4677/b8cadd8f13-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF35VGKS</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">0.031</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Серебристый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4678" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4678</url>
    <price>15939.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4678/2b1842df7b-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF35VGKW</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">0.031</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4686" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4686</url>
    <price>30492.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4686/ba60e46933-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-EF35VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.91</param>
    <param name="Потребляемая мощность нагр., кВт">0.955</param>
    <param name="Заводская заправка хладогентом">0.74</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">35</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4701" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4701</url>
    <price>17408.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4701/a4c12852e6-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF42VE3B</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">0.031</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4702" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4702</url>
    <price>17884.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4702/b78db5b47e-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF42VE3S</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">0.031</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Серебристый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4671" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4671</url>
    <price>34340.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4671/2f2c630a30-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-EF42VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.28</param>
    <param name="Потребляемая мощность нагр., кВт">1.46</param>
    <param name="Заводская заправка хладогентом">1.15</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">35</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4679" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4679</url>
    <price>19701.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4679/25945bb6ab-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF42VGKB</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">0.031</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4680" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4680</url>
    <price>20196.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4680/25a4b864ca-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF42VGKS</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">0.031</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Серебристый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.014</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4681" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4681</url>
    <price>19734.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4681/c80eaf10ed-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF42VGKW</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">0.031</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.018</param>
    <param name="Потребляемая мощность нагр., кВт">0.031</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4688" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4688</url>
    <price>36729.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4688/4907756583-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-EF42VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.28</param>
    <param name="Потребляемая мощность нагр., кВт">1.46</param>
    <param name="Заводская заправка хладогентом">0.74</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">35</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4682" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4682</url>
    <price>22308.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4682/dc5e21acb0-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF50VGKB</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">0.034</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Чёрный</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.018</param>
    <param name="Потребляемая мощность нагр., кВт">0.034</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">43</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4683" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4683</url>
    <price>23430.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4683/80afab2669-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF50VGKS</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">0.034</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Серебристый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.018</param>
    <param name="Потребляемая мощность нагр., кВт">0.034</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">43</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4684" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4684</url>
    <price>22308.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4684/d660dc5791-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-EF50VGKW</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">0.034</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.018</param>
    <param name="Потребляемая мощность нагр., кВт">0.034</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">43</param>
    <param name="Размеры ДхВхГ, мм">895x195x299</param>
    <param name="Вес нетто, кг">11.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4687" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4687</url>
    <price>43659.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>158</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4687/6bc547f2c9-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-EF50VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">DESIGN INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.56</param>
    <param name="Потребляемая мощность нагр., кВт">1.565</param>
    <param name="Заводская заправка хладогентом">1.05</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">43</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">54</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4470" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4470</url>
    <price>10197.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4470/5b7cbc0dcb-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP15VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 1,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">1.5</param>
    <param name="Производительность нагр., кВт">1.7</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.017</param>
    <param name="Потребляемая мощность нагр., кВт">0.017</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">40</param>
    <param name="Размеры ДхВхГ, мм">760x178x250</param>
    <param name="Вес нетто, кг">8.2</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4491" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4491</url>
    <price>11484.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <name>MSZ-AP15VGK</name>
    <description>
    Бытовой кондиционер, внутрений настенный (Standard Inverter)
    </description>
    <param name="Производительность охл., кВт">1.7</param>
    <param name="Производительность нагр., кВт">1.7</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.02</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">760x178x250</param>
    <param name="Вес нетто, кг">8.2</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4493" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4493</url>
    <price>21945.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <name>MUZ-AP15VG</name>
    <description>
    Бытовой кондиционер, наружный блок (Standard Inverter)
    </description>
    <param name="Производительность охл., кВт">1.5</param>
    <param name="Производительность нагр., кВт">1.7</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.36</param>
    <param name="Потребляемая мощность нагр., кВт">0.5</param>
    <param name="Заводская заправка хладогентом">0.49</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Размеры упаковки ДхВхГ, мм">699×249×538</param>
    <param name="Вес нетто, кг">23</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4471" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4471</url>
    <price>10197.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4471/ba7cc19ce4-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP20VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2</param>
    <param name="Производительность нагр., кВт">2.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.019</param>
    <param name="Потребляемая мощность нагр., кВт">0.019</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">760x178x250</param>
    <param name="Вес нетто, кг">8.2</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4492" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4492</url>
    <price>11781.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <name>MSZ-AP20VGK</name>
    <description>
    Бытовой кондиционер, внутрений настенный (Standard Inverter)
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.02</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">40</param>
    <param name="Размеры ДхВхГ, мм">760x178x250</param>
    <param name="Вес нетто, кг">8.2</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4472" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4472</url>
    <price>22407.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4472/bfbeb26219-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-AP20VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2</param>
    <param name="Производительность нагр., кВт">2.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.46</param>
    <param name="Потребляемая мощность нагр., кВт">0.6</param>
    <param name="Заводская заправка хладогентом">0.55</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">31</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4479" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4479</url>
    <price>12111.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4479/bd007e97b6-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP25VGK</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.026</param>
    <param name="Потребляемая мощность нагр., кВт">0.026</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">798x219x299</param>
    <param name="Вес нетто, кг">10.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4487" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4487</url>
    <price>23331.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4487/6e1c5e3ae9-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-AP25VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.6</param>
    <param name="Потребляемая мощность нагр., кВт">0.78</param>
    <param name="Заводская заправка хладогентом">0.55</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">31</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4480" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4480</url>
    <price>15213.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4480/e9bfe3f5c9-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP35VGK</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.026</param>
    <param name="Потребляемая мощность нагр., кВт">0.026</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">798x219x299</param>
    <param name="Вес нетто, кг">10.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4488" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4488</url>
    <price>28809.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4488/f4c918d835-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-AP35VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.99</param>
    <param name="Потребляемая мощность нагр., кВт">1.03</param>
    <param name="Заводская заправка хладогентом">0.55</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">31</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4485" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4485</url>
    <price>15114.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4485/f0d69f04e1-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP42VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.032</param>
    <param name="Потребляемая мощность нагр., кВт">0.032</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">798x219x299</param>
    <param name="Вес нетто, кг">10.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4481" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4481</url>
    <price>17358.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4481/b4f94bb670-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP42VGK</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.032</param>
    <param name="Потребляемая мощность нагр., кВт">0.032</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">798x219x299</param>
    <param name="Вес нетто, кг">10.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4489" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4489</url>
    <price>34683.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4489/61a999d705-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-AP42VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.3</param>
    <param name="Потребляемая мощность нагр., кВт">1.49</param>
    <param name="Заводская заправка хладогентом">0.7</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">35</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4486" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4486</url>
    <price>19140.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4486/86b5d879b1-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP50VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.032</param>
    <param name="Потребляемая мощность нагр., кВт">0.032</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">798x219x299</param>
    <param name="Вес нетто, кг">10.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4482" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4482</url>
    <price>21615.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4482/b2a49afc23-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP50VGK</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.032</param>
    <param name="Потребляемая мощность нагр., кВт">0.032</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">798x219x299</param>
    <param name="Вес нетто, кг">10.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4490" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4490</url>
    <price>40722.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4490/e39fc7b3b9-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-AP50VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.55</param>
    <param name="Потребляемая мощность нагр., кВт">1.6</param>
    <param name="Заводская заправка хладогентом">1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x285x714</param>
    <param name="Вес нетто, кг">40</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4475" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4475</url>
    <price>20328.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4475/8c1a3134a1-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP60VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.049</param>
    <param name="Потребляемая мощность нагр., кВт">0.049</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">1100x257x325</param>
    <param name="Вес нетто, кг">16</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4477" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4477</url>
    <price>22902.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4477/12af2de2ef-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP60VGK</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.049</param>
    <param name="Потребляемая мощность нагр., кВт">0.049</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">1100x257x325</param>
    <param name="Вес нетто, кг">16</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4473" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4473</url>
    <price>49830.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4473/bc7ee70f5e-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-AP60VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.59</param>
    <param name="Потребляемая мощность нагр., кВт">1.67</param>
    <param name="Заводская заправка хладогентом">1.05</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x285x714</param>
    <param name="Вес нетто, кг">40</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4476" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4476</url>
    <price>26004.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4476/3737212fd5-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP71VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.045</param>
    <param name="Потребляемая мощность нагр., кВт">0.045</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">1100x257x325</param>
    <param name="Вес нетто, кг">17</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4478" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4478</url>
    <price>28941.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4478/e9bc8fa3ae-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-AP71VGK</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.045</param>
    <param name="Потребляемая мощность нагр., кВт">0.045</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">1100x257x325</param>
    <param name="Вес нетто, кг">17</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4474" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4474</url>
    <price>62007.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>151</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4474/01961bdbb0-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-AP71VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.01</param>
    <param name="Потребляемая мощность нагр., кВт">2.12</param>
    <param name="Заводская заправка хладогентом">1.5</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">55</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4655" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4655</url>
    <price>10098.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4655/b5163fe600-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-SF15VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 1,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">1.5</param>
    <param name="Производительность нагр., кВт">2.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.017</param>
    <param name="Потребляемая мощность нагр., кВт">0.017</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">21</param>
    <param name="Размеры ДхВхГ, мм">760x168x250</param>
    <param name="Вес нетто, кг">10</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4657" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4657</url>
    <price>9900.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4657/f056966587-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-SF25VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.023</param>
    <param name="Потребляемая мощность нагр., кВт">0.023</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">19</param>
    <param name="Размеры ДхВхГ, мм">798х195х299</param>
    <param name="Вес нетто, кг">10</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4661" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4661</url>
    <price>21252.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4661/81c2939060-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-SF25VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.6</param>
    <param name="Потребляемая мощность нагр., кВт">0.78</param>
    <param name="Заводская заправка хладогентом">0.7</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">31</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4658" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4658</url>
    <price>12738.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4658/3d44795480-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-SF35VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.029</param>
    <param name="Потребляемая мощность нагр., кВт">0.029</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">19</param>
    <param name="Размеры ДхВхГ, мм">798x195x299</param>
    <param name="Вес нетто, кг">10</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4662" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4662</url>
    <price>26268.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4662/2ca4b42921-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-SF35VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.08</param>
    <param name="Потребляемая мощность нагр., кВт">1.03</param>
    <param name="Заводская заправка хладогентом">0.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">31</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4659" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4659</url>
    <price>14685.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4659/c639a98d5b-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-SF42VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Размеры ДхВхГ, мм">798x195x299</param>
    <param name="Вес нетто, кг">10</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4663" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4663</url>
    <price>31614.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4663/78d26722ac-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-SF42VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.34</param>
    <param name="Потребляемая мощность нагр., кВт">1.58</param>
    <param name="Заводская заправка хладогентом">1.15</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">35</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4660" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4660</url>
    <price>18579.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4660/ccb9c88e70-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-SF50VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4) /15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.043</param>
    <param name="Потребляемая мощность нагр., кВт">0.043</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">28</param>
    <param name="Размеры ДхВхГ, мм">798x195x299</param>
    <param name="Вес нетто, кг">10</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4664" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4664</url>
    <price>37125.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4664/f35aae9718-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-SF50VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.66</param>
    <param name="Потребляемая мощность нагр., кВт">1.7</param>
    <param name="Заводская заправка хладогентом">1.55</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">45</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">55</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4666" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4666</url>
    <price>19767.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4666/0327682320-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-GF60VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35 (1/4) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.062</param>
    <param name="Потребляемая мощность нагр., кВт">0.062</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">29</param>
    <param name="Размеры ДхВхГ, мм">1100x238x325</param>
    <param name="Вес нетто, кг">16</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4665" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4665</url>
    <price>45441.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>157</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4665/9479f73949-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-GF60VE</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">STANDARD INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.79</param>
    <param name="Потребляемая мощность нагр., кВт">1.81</param>
    <param name="Заводская заправка хладогентом">1.55</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">65</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">50</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4448" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4448</url>
    <price>7095.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4448/16204904d9-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-HR25VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.15</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">21</param>
    <param name="Размеры ДхВхГ, мм">838x228x280</param>
    <param name="Вес нетто, кг">8.5</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4452" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4452</url>
    <price>16533.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4452/17c424d11b-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-HR25VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.15</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.8</param>
    <param name="Потребляемая мощность нагр., кВт">0.85</param>
    <param name="Заводская заправка хладогентом">0.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">699x249x538</param>
    <param name="Вес нетто, кг">23</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4449" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4449</url>
    <price>8415.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4449/092fa10a24-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-HR35VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,4кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.4</param>
    <param name="Производительность нагр., кВт">3.6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.028</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">22</param>
    <param name="Размеры ДхВхГ, мм">838x228x280</param>
    <param name="Вес нетто, кг">8.5</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4453" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4453</url>
    <price>19767.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4453/59f5fdb9de-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-HR35VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,4кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.4</param>
    <param name="Производительность нагр., кВт">3.6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.21</param>
    <param name="Потребляемая мощность нагр., кВт">0.975</param>
    <param name="Заводская заправка хладогентом">0.45</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">699x249x538</param>
    <param name="Вес нетто, кг">24</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4450" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4450</url>
    <price>9735.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4450/93c64a368c-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-HR42VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">4.7</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.032</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">24</param>
    <param name="Размеры ДхВхГ, мм">838x228x280</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4454" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4454</url>
    <price>22968.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4454/6501393a33-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-HR42VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">4.7</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.34</param>
    <param name="Потребляемая мощность нагр., кВт">1.3</param>
    <param name="Заводская заправка хладогентом">0.7</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">34</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4451" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4451</url>
    <price>11484.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4451/b8af8ea878-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-HR50VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.05</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">28</param>
    <param name="Размеры ДхВхГ, мм">838x228x280</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4455" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4455</url>
    <price>26928.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4455/27781c9506-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-HR50VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.05</param>
    <param name="Потребляемая мощность нагр., кВт">1.55</param>
    <param name="Заводская заправка хладогентом">0.8</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">35</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Турция</param>
    </offer>
    <offer id="4444" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4444</url>
    <price>18018.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4444/64f40b9ded-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-HR60VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35 (1/4) 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.055</param>
    <param name="Потребляемая мощность нагр., кВт">0.07</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">33</param>
    <param name="Размеры ДхВхГ, мм">923x262x305</param>
    <param name="Вес нетто, кг">12.5</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4446" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4446</url>
    <price>32076.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4446/d4ccc08e14-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-HR60VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35 (1/4) 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.81</param>
    <param name="Потребляемая мощность нагр., кВт">1.81</param>
    <param name="Заводская заправка хладогентом">1.05</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">800x285x714</param>
    <param name="Вес нетто, кг">40</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4445" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4445</url>
    <price>20823.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4445/503a2d85dc-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-HR71VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 6,35 (1/4) 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.055</param>
    <param name="Потребляемая мощность нагр., кВт">0.07</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">33</param>
    <param name="Размеры ДхВхГ, мм">923x262x305</param>
    <param name="Вес нетто, кг">12.5</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4447" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4447</url>
    <price>36927.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>150</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4447/057a89516c-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-HR71VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 6,35 (1/4) 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.33</param>
    <param name="Потребляемая мощность нагр., кВт">2.44</param>
    <param name="Заводская заправка хладогентом">1.05</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">800x285x714</param>
    <param name="Вес нетто, кг">40</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4599" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4599</url>
    <price>8151.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>152</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4599/c6f54dcea6-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-BT20VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2кВт, Магистраль 6,35 (1/4)9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2</param>
    <param name="Производительность нагр., кВт">2.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">BREEZ</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.019</param>
    <param name="Потребляемая мощность нагр., кВт">0.024</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">19</param>
    <param name="Размеры ДхВхГ, мм">838x280x235</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4600" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4600</url>
    <price>18711.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>152</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4600/51e691fa9c-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-BT20VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2кВт, Магистраль 6,35 (1/4)9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2</param>
    <param name="Производительность нагр., кВт">2.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">BREEZ</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.45</param>
    <param name="Потребляемая мощность нагр., кВт">0.55</param>
    <param name="Заводская заправка хладогентом">0.45</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">699x538x249</param>
    <param name="Вес нетто, кг">23</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4602" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4602</url>
    <price>8514.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>152</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4602/bb6011f7ec-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-BT25VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4)9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.15</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">BREEZ</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.019</param>
    <param name="Потребляемая мощность нагр., кВт">0.024</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">19</param>
    <param name="Размеры ДхВхГ, мм">838x280x236</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4601" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4601</url>
    <price>19305.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>152</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4601/670a3211c5-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-BT25VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4)9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.15</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">BREEZ</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.7</param>
    <param name="Потребляемая мощность нагр., кВт">0.75</param>
    <param name="Заводская заправка хладогентом">0.5</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">699x538x249</param>
    <param name="Вес нетто, кг">24</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4603" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4603</url>
    <price>9669.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>152</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4603/a6f46e68c9-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-BT35VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4)9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">3.6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">BREEZ</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.031</param>
    <param name="Потребляемая мощность нагр., кВт">0.024</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">19</param>
    <param name="Размеры ДхВхГ, мм">838x280x235</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4604" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4604</url>
    <price>22572.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>152</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4604/95c1a2c816-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-BT35VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4)9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">3.6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">BREEZ</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.24</param>
    <param name="Потребляемая мощность нагр., кВт">0.93</param>
    <param name="Заводская заправка хладогентом">0.5</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">699x538x249</param>
    <param name="Вес нетто, кг">24</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4606" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4606</url>
    <price>11880.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>152</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4606/604c73f588-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-BT50VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4)12,7 (1/2)), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">BREEZ</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.031</param>
    <param name="Потребляемая мощность нагр., кВт">0.037</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)12,7 (1/2))</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">29</param>
    <param name="Размеры ДхВхГ, мм">838x280x235</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4605" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4605</url>
    <price>27918.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>152</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4605/f38bdc4aa8-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-BT50VG</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4)12,7 (1/2)), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">BREEZ</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.05</param>
    <param name="Потребляемая мощность нагр., кВт">1.55</param>
    <param name="Заводская заправка хладогентом">0.7</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)12,7 (1/2))</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x550x285</param>
    <param name="Вес нетто, кг">35</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6291" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6291</url>
    <price>6633.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>160</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6291/96f3fbc5a8-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-DM25VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.15</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.02</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">22</param>
    <param name="Размеры ДхВхГ, мм">799x232x290</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6293" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6293</url>
    <price>15510.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>160</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6293/9addda39a9-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-DM25VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 12,7 (1/2) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.15</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.71</param>
    <param name="Потребляемая мощность нагр., кВт">0.71</param>
    <param name="Заводская заправка хладогентом">0.7</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">699x249x538</param>
    <param name="Вес нетто, кг">25</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6292" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6292</url>
    <price>7854.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>160</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6292/9cf76b34ab-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-DM35VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,15кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.15</param>
    <param name="Производительность нагр., кВт">3.6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.021</param>
    <param name="Потребляемая мощность нагр., кВт">0.021</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">22</param>
    <param name="Размеры ДхВхГ, мм">799x232x290</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6294" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6294</url>
    <price>18546.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>160</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6294/d08be2e813-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-DM35VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,15кВт, Магистраль 6,35 (1/4) / 15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.15</param>
    <param name="Производительность нагр., кВт">3.6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.02</param>
    <param name="Потребляемая мощность нагр., кВт">0.975</param>
    <param name="Заводская заправка хладогентом">0.72</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">699x249x538</param>
    <param name="Вес нетто, кг">26</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6296" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6296</url>
    <price>16896.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>160</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6296/0405dce1d1-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-DM60VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35 (1/4) / 15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.055</param>
    <param name="Потребляемая мощность нагр., кВт">0.055</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">31</param>
    <param name="Размеры ДхВхГ, мм">923x250x305</param>
    <param name="Вес нетто, кг">13</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6299" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6299</url>
    <price>30096.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>160</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6299/1c86c62344-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-DM60VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35 (1/4) / 15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">6.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.9</param>
    <param name="Потребляемая мощность нагр., кВт">1.97</param>
    <param name="Заводская заправка хладогентом">1.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">55</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6297" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6297</url>
    <price>19569.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>160</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6297/28816d7770-1_resize_1200x1200.jpg
    </picture>
    <name>MSZ-DM71VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.055</param>
    <param name="Потребляемая мощность нагр., кВт">0.055</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">33</param>
    <param name="Размеры ДхВхГ, мм">923x250x305</param>
    <param name="Вес нетто, кг">13</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6300" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6300</url>
    <price>34683.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>160</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6300/98aebecad5-1_resize_1200x1200.jpg
    </picture>
    <name>MUZ-DM71VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.33</param>
    <param name="Потребляемая мощность нагр., кВт">2.44</param>
    <param name="Заводская заправка хладогентом">1.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">55</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4636" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4636</url>
    <price>37521.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>154</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4636/649073fb63-1_resize_1200x1200.jpg
    </picture>
    <name>MLZ-KP25VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4)9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-16</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Размеры ДхВхГ, мм">360x1102x185</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="4637" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4637</url>
    <price>44748.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>154</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4637/dc74cb3783-1_resize_1200x1200.jpg
    </picture>
    <name>MLZ-KP35VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4)9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-16</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Размеры ДхВхГ, мм">360x1102x185</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="4638" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4638</url>
    <price>52206.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>154</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4638/67f7f141bf-1_resize_1200x1200.jpg
    </picture>
    <name>MLZ-KP50VF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,8кВт, Магистраль 6,35 (1/4)12,7 (1/2)), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.8</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2))</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-16</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Размеры ДхВхГ, мм">360x1102x185</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="4635" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4635</url>
    <price>43214.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>154</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4635/42a3677ca2-1_resize_1200x1200.jpg
    </picture>
    <name>MLZ-KA35VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4)9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4)9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-16</param>
    <param name="Уровень шума, дБ(А)">31</param>
    <param name="Размеры ДхВхГ, мм">1102 x 175 x 360</param>
    <param name="Вес нетто, кг">15</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="4611" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4611</url>
    <price>9010.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>155</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4611/42ae97e225-1_resize_1200x1200.jpg
    </picture>
    <name>MLP-443W</name>
    <description>
    &lt;p&gt;Декоративная панель Mitsubishi Electric&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Вес нетто, кг">3.5</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="4610" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4610</url>
    <price>8910.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>155</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4610/876e4351a0-1_resize_1200x1200.jpg
    </picture>
    <name>MLP-444W</name>
    <description>
    &lt;p&gt;Декоративная панель Mitsubishi Electric&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Вес нетто, кг">3.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6109" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6109</url>
    <price>7128.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6109/ad913525d3-1_resize_1200x1200.jpg
    </picture>
    <name>MS-GF20VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,3кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.3</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.035</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Уровень шума, дБ(А)">25</param>
    <param name="Размеры ДхВхГ, мм">798x232x295</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6116" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6116</url>
    <price>13035.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6116/d0e19ff62f-1_resize_1200x1200.jpg
    </picture>
    <name>MU-GF20VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,3кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.3</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.71</param>
    <param name="Заводская заправка хладогентом">0.65</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">718x255x525</param>
    <param name="Вес нетто, кг">25</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6110" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6110</url>
    <price>8382.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6110/2151d4935a-1_resize_1200x1200.jpg
    </picture>
    <name>MS-GF25VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.035</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Уровень шума, дБ(А)">25</param>
    <param name="Размеры ДхВхГ, мм">798x232x296</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6111" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6111</url>
    <price>14223.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6111/5a308fec0f-1_resize_1200x1200.jpg
    </picture>
    <name>MU-GF25VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.775</param>
    <param name="Заводская заправка хладогентом">0.65</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">718x255x525</param>
    <param name="Вес нетто, кг">25</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6119" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6119</url>
    <price>9339.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6119/66609f263f-1_resize_1200x1200.jpg
    </picture>
    <name>MS-GF35VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,45кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.45</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.043</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Размеры ДхВхГ, мм">798x232x297</param>
    <param name="Вес нетто, кг">9</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6120" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6120</url>
    <price>17721.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6120/15d2405253-1_resize_1200x1200.jpg
    </picture>
    <name>MU-GF35VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,45кВт, Магистраль 6,35 (1/4) 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.45</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.12</param>
    <param name="Заводская заправка хладогентом">1.1</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">718x255x525</param>
    <param name="Вес нетто, кг">34</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6117" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6117</url>
    <price>13530.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6117/425af13e21-1_resize_1200x1200.jpg
    </picture>
    <name>MS-GF50VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,85кВт, Магистраль 9,52 (3/8) 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.85</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.039</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Уровень шума, дБ(А)">34</param>
    <param name="Размеры ДхВхГ, мм">1100x238x325</param>
    <param name="Вес нетто, кг">16</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6118" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6118</url>
    <price>18183.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6118/383d27b47b-1_resize_1200x1200.jpg
    </picture>
    <name>MU-GF50VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,85кВт, Магистраль 9,52 (3/8) 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.85</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.48</param>
    <param name="Заводская заправка хладогентом">1.2</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">38</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6112" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6112</url>
    <price>16005.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6112/33f44043cf-1_resize_1200x1200.jpg
    </picture>
    <name>MS-GF60VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,4кВт, Магистраль 6,35 (1/4) 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.039</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Уровень шума, дБ(А)">37</param>
    <param name="Размеры ДхВхГ, мм">1100x238x326</param>
    <param name="Вес нетто, кг">16</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6114" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6114</url>
    <price>24156.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6114/2f25ad24a4-1_resize_1200x1200.jpg
    </picture>
    <name>MU-GF60VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,4кВт, Магистраль 6,35 (1/4) 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.17</param>
    <param name="Заводская заправка хладогентом">1.3</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">57</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6113" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6113</url>
    <price>19239.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6113/fd1b24ab91-1_resize_1200x1200.jpg
    </picture>
    <name>MS-GF80VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,8кВт, Магистраль 9,52 (3/8) 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.051</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Уровень шума, дБ(А)">37</param>
    <param name="Размеры ДхВхГ, мм">1100x238x327</param>
    <param name="Вес нетто, кг">16</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6115" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6115</url>
    <price>28446.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>146</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6115/b5eb9b582f-1_resize_1200x1200.jpg
    </picture>
    <name>MU-GF80VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,8кВт, Магистраль 9,52 (3/8) 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">CLASSIC</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.78</param>
    <param name="Заводская заправка хладогентом">1.85</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">57</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="5997" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5997</url>
    <price>1254.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>147</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5997/45fba3b2fe-1_resize_1200x1200.jpg
    </picture>
    <name>MAC-2320FT-E</name>
    <description>Антиаллергенная фильтрующая вставка</description>
    <param name="Вес нетто, кг">0.34</param>
    </offer>
    <offer id="4728" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4728</url>
    <price>39864.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4728/f00a90cd49-1_resize_1200x1200.png
    </picture>
    <name>MXZ-2D33VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,3кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.3</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.9</param>
    <param name="Потребляемая мощность нагр., кВт">0.96</param>
    <param name="Заводская заправка хладогентом">1.15</param>
    <param name="Хладагент">R410A</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">32</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4725" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4725</url>
    <price>43032.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4725/5a6b88832e-1_resize_1200x1200.png
    </picture>
    <name>MXZ-2D42VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,2кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">4.5</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1</param>
    <param name="Потребляемая мощность нагр., кВт">0.93</param>
    <param name="Заводская заправка хладогентом">1.3</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x2 | 9,52 (3/8) x2</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">2</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x550x285</param>
    <param name="Вес нетто, кг">34</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4733" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4733</url>
    <price>50655.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4733/e98ca2684d-1_resize_1200x1200.png
    </picture>
    <name>MXZ-2D53VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,3кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.3</param>
    <param name="Производительность нагр., кВт">6.4</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.54</param>
    <param name="Потребляемая мощность нагр., кВт">1.7</param>
    <param name="Заводская заправка хладогентом">1.3</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x2 | 9,52 (3/8) x2</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">2</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800×550×285</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4732" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4732</url>
    <price>63657.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4732/666a0f455c-1_resize_1200x1200.png
    </picture>
    <name>MXZ-2E53VAHZ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,3кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.3</param>
    <param name="Производительность нагр., кВт">6.4</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.54</param>
    <param name="Потребляемая мощность нагр., кВт">1.7</param>
    <param name="Заводская заправка хладогентом">2</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x2 | 9,52 (3/8) x2</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">2</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950x796x330</param>
    <param name="Вес нетто, кг">61</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Китай</param>
    </offer>
    <offer id="4710" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4710</url>
    <price>55209.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4710/d8b86d93c9-1_resize_1200x1200.png
    </picture>
    <name>MXZ-3E54VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,4кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.4</param>
    <param name="Производительность нагр., кВт">7</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.35</param>
    <param name="Потребляемая мощность нагр., кВт">1.59</param>
    <param name="Заводская заправка хладогентом">2.7</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x3 | 9,52 (3/8) x3</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">2</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x330x710</param>
    <param name="Вес нетто, кг">58</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4729" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4729</url>
    <price>64086.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4729/9f9bc96aed-1_resize_1200x1200.png
    </picture>
    <name>MXZ-3E68VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,8кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 60м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.8</param>
    <param name="Производительность нагр., кВт">8.6</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.19</param>
    <param name="Потребляемая мощность нагр., кВт">2.38</param>
    <param name="Заводская заправка хладогентом">2.7</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x3 | 9,52 (3/8) x3</param>
    <param name="Макс. длинна магистрали, м">60</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">3</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x710x330</param>
    <param name="Вес нетто, кг">58</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4709" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4709</url>
    <price>74349.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4709/911a33b446-1_resize_1200x1200.png
    </picture>
    <name>MXZ-4E72VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,2кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 60м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.2</param>
    <param name="Производительность нагр., кВт">8.6</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.25</param>
    <param name="Потребляемая мощность нагр., кВт">2.38</param>
    <param name="Заводская заправка хладогентом">2.7</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x4 | 9,52 (3/8) x3 + 12,7 (1/2) x1</param>
    <param name="Макс. длинна магистрали, м">60</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">4</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x710x330</param>
    <param name="Вес нетто, кг">59</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4731" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4731</url>
    <price>100551.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4731/6092a089b3-1_resize_1200x1200.png
    </picture>
    <name>MXZ-4E83VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 8,3кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 70м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">8.3</param>
    <param name="Производительность нагр., кВт">9.3</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.44</param>
    <param name="Потребляемая мощность нагр., кВт">2</param>
    <param name="Заводская заправка хладогентом">2.9</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) ×4 | 9,52 (3/8) ×3 + 12,7 (1/2) ×1</param>
    <param name="Макс. длинна магистрали, м">70</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">4</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950x796x330</param>
    <param name="Вес нетто, кг">63</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Китай</param>
    </offer>
    <offer id="4727" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4727</url>
    <price>117315.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4727/626300efb3-1_resize_1200x1200.png
    </picture>
    <name>MXZ-4E83VAHZ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 8,3кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 70м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">8.3</param>
    <param name="Производительность нагр., кВт">9.3</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.44</param>
    <param name="Потребляемая мощность нагр., кВт">2</param>
    <param name="Заводская заправка хладогентом">3.9</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x4 | 9,52 (3/8) x3 + 12,7 (1/2) x1</param>
    <param name="Макс. длинна магистрали, м">70</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">4</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">950x1048x330</param>
    <param name="Вес нетто, кг">87</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4730" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4730</url>
    <price>137610.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4730/a39107f70c-1_resize_1200x1200.png
    </picture>
    <name>MXZ-5E102VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,2кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 80м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.2</param>
    <param name="Производительность нагр., кВт">10.5</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.15</param>
    <param name="Потребляемая мощность нагр., кВт">2.34</param>
    <param name="Заводская заправка хладогентом">2.9</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) × 5 / 9,52 (3/8) × 4 + 12,7 (1/2) × 1</param>
    <param name="Макс. длинна магистрали, м">80</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">5</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950×796x330</param>
    <param name="Вес нетто, кг">64</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Китай</param>
    </offer>
    <offer id="4726" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4726</url>
    <price>152031.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>372</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4726/9da1f43ee1-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-6D122VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,2кВт, питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 80м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.2</param>
    <param name="Производительность нагр., кВт">14</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.66</param>
    <param name="Потребляемая мощность нагр., кВт">3.31</param>
    <param name="Заводская заправка хладогентом">4</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) ×6 / 9,52 (3/8) ×5 + 12,7 (1/2) ×1</param>
    <param name="Макс. длинна магистрали, м">80</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">6</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950×1048x330</param>
    <param name="Вес нетто, кг">88</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4711" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4711</url>
    <price>39864.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4711/5541195a90-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-2F33VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">3.3</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.85</param>
    <param name="Потребляемая мощность нагр., кВт">0.91</param>
    <param name="Заводская заправка хладогентом">0.8</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x2 | 9,52 (3/8) x2</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Макс. кол-во вутренних блоков">2</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x550x285</param>
    <param name="Вес нетто, кг">33</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4712" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4712</url>
    <price>43032.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4712/1dda1a4f0f-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-2F42VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">4.2</param>
    <param name="Производительность нагр., кВт">4.5</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.98</param>
    <param name="Потребляемая мощность нагр., кВт">0.88</param>
    <param name="Заводская заправка хладогентом">1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x2 | 9,52 (3/8) x2</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">2</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x550x285</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4713" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4713</url>
    <price>50655.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4713/3c038c09de-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-2F53VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">5.3</param>
    <param name="Производительность нагр., кВт">6.4</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.4</param>
    <param name="Потребляемая мощность нагр., кВт">1.56</param>
    <param name="Заводская заправка хладогентом">1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x2 | 9,52 (3/8) x2</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">2</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x550x285</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4714" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4714</url>
    <price>63657.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4714/c601f36825-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-2F53VFHZ</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">5.3</param>
    <param name="Производительность нагр., кВт">6.4</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.29</param>
    <param name="Потребляемая мощность нагр., кВт">1.36</param>
    <param name="Заводская заправка хладогентом">2.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x2 | 9,52 (3/8) x2</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">2</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">950x796x330</param>
    <param name="Вес нетто, кг">61</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Китай</param>
    </offer>
    <offer id="4717" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4717</url>
    <price>55242.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4717/0c74b6a524-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-3F54VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">5.4</param>
    <param name="Производительность нагр., кВт">7</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.32</param>
    <param name="Потребляемая мощность нагр., кВт">1.4</param>
    <param name="Заводская заправка хладогентом">2.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x3 | 9,52 (3/8) x3</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">3</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x710x330</param>
    <param name="Вес нетто, кг">58</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4719" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4719</url>
    <price>64086.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4719/4e8fe668b2-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-3F68VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">6.8</param>
    <param name="Производительность нагр., кВт">8.6</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.84</param>
    <param name="Потребляемая мощность нагр., кВт">1.91</param>
    <param name="Заводская заправка хладогентом">2.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x3 | 9,52 (3/8) x3</param>
    <param name="Макс. длинна магистрали, м">60</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">3</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x710x330</param>
    <param name="Вес нетто, кг">58</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4720" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4720</url>
    <price>74349.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4720/bebf314745-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-4F72VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">7.2</param>
    <param name="Производительность нагр., кВт">8.6</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.85</param>
    <param name="Потребляемая мощность нагр., кВт">1.87</param>
    <param name="Заводская заправка хладогентом">2.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x4 | 9,52 (3/8) x3 + 12,7 (1/2) x1</param>
    <param name="Макс. длинна магистрали, м">60</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">4</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x710x330</param>
    <param name="Вес нетто, кг">59</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4721" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4721</url>
    <price>100584.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4721/0df356843f-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-4F83VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">8.3</param>
    <param name="Производительность нагр., кВт">9.3</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.97</param>
    <param name="Потребляемая мощность нагр., кВт">2</param>
    <param name="Заводская заправка хладогентом">2.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) ×4 | 9,52 (3/8) ×3 + 12,7 (1/2) ×1</param>
    <param name="Макс. длинна магистрали, м">70</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">4</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950x796x330</param>
    <param name="Вес нетто, кг">62</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Китай</param>
    </offer>
    <offer id="4722" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4722</url>
    <price>117315.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4722/fe40cdf2c4-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-4F83VFHZ</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">8.3</param>
    <param name="Производительность нагр., кВт">9</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.9</param>
    <param name="Потребляемая мощность нагр., кВт">1.7</param>
    <param name="Заводская заправка хладогентом">2.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x4 | 9,52 (3/8) x3 + 12,7 (1/2) x1</param>
    <param name="Макс. длинна магистрали, м">70</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">4</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">950x1048x330</param>
    <param name="Вес нетто, кг">86</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4723" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4723</url>
    <price>137610.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4723/06a062ce49-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-5F102VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">10.2</param>
    <param name="Производительность нагр., кВт">10.5</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.8</param>
    <param name="Потребляемая мощность нагр., кВт">2.28</param>
    <param name="Заводская заправка хладогентом">2.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) ×5 / 9,52 (3/8) ×4 + 12,7 (1/2) ×1</param>
    <param name="Макс. длинна магистрали, м">80</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">5</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры упаковки ДхВхГ, мм">950×796x330</param>
    <param name="Вес нетто, кг">62</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Китай</param>
    </offer>
    <offer id="4724" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4724</url>
    <price>152031.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>373</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4724/a8bd545940-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-6F122VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">12.2</param>
    <param name="Производительность нагр., кВт">14</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.66</param>
    <param name="Потребляемая мощность нагр., кВт">3.31</param>
    <param name="Заводская заправка хладогентом">2.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) ×6 / 9,52 (3/8) ×5 + 12,7 (1/2) ×1</param>
    <param name="Макс. длинна магистрали, м">80</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">6</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950×1048x330</param>
    <param name="Вес нетто, кг">87</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4715" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4715</url>
    <price>37983.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>374</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4715/49bffc3414-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-2HA40VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">4</param>
    <param name="Производительность нагр., кВт">4.3</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.05</param>
    <param name="Потребляемая мощность нагр., кВт">0.91</param>
    <param name="Заводская заправка хладогентом">0.9</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x2 | 9,52 (3/8) x2</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">2</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800×550×285</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4716" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4716</url>
    <price>42999.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>374</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4716/bc666d2a74-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-2HA50VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.52</param>
    <param name="Потребляемая мощность нагр., кВт">1.54</param>
    <param name="Заводская заправка хладогентом">0.9</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x2 | 9,52 (3/8) x2</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">2</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800×550×285</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4718" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4718</url>
    <price>48708.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>374</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4718/131c25f4da-1_resize_1200x1200.jpeg
    </picture>
    <name>MXZ-3HA50VF</name>
    <description>
    Бытовой кондиционер, наружный мультисистемный (Inverter)
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Мультисплиты</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">M-SERIES</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.26</param>
    <param name="Потребляемая мощность нагр., кВт">1.3</param>
    <param name="Заводская заправка хладогентом">1.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) x3 | 9,52 (3/8) x3</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Макс. кол-во вутренних блоков">3</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры упаковки ДхВхГ, мм">840×710×330</param>
    <param name="Вес нетто, кг">57</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4630" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4630</url>
    <price>28677.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>165</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4630/e6eabcd7e3-1_resize_1200x1200.jpg
    </picture>
    <name>SEZ-M25DA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">2.9</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.07</param>
    <param name="Потребляемая мощность нагр., кВт">0.07</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 9,52 (3/8)</param>
    <param name="Размеры ДхВхГ, мм">790x700x200</param>
    <param name="Вес нетто, кг">18</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4631" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4631</url>
    <price>29370.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>165</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4631/76500fccf2-1_resize_1200x1200.jpg
    </picture>
    <name>SEZ-M35DA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.07</param>
    <param name="Потребляемая мощность нагр., кВт">0.07</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 9,52 (3/8)</param>
    <param name="Размеры ДхВхГ, мм">990x700x200</param>
    <param name="Вес нетто, кг">21</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4632" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4632</url>
    <price>34023.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>165</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4632/ac91b05e41-1_resize_1200x1200.jpg
    </picture>
    <name>SEZ-M50DA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,1кВт, Магистраль 6,35 (1/4) / 12,7 (1/2) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.1</param>
    <param name="Производительность нагр., кВт">6.4</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.1</param>
    <param name="Потребляемая мощность нагр., кВт">0.1</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 12,7 (1/2)</param>
    <param name="Размеры ДхВхГ, мм">990x700x200</param>
    <param name="Вес нетто, кг">23</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4633" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4633</url>
    <price>40722.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>165</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4633/a381b1ad1b-1_resize_1200x1200.jpg
    </picture>
    <name>SEZ-M60DA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,6кВт, Магистраль 6,35 (1/4) / 15,88 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.6</param>
    <param name="Производительность нагр., кВт">7.4</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.1</param>
    <param name="Потребляемая мощность нагр., кВт">0.1</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 15,88 (5/8)</param>
    <param name="Размеры ДхВхГ, мм">1190x700x200</param>
    <param name="Вес нетто, кг">27</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4634" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4634</url>
    <price>52965.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>165</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4634/d5bb8a31e5-1_resize_1200x1200.jpg
    </picture>
    <name>SEZ-M71DA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 6,35 (1/4) / 15,88 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.1</param>
    <param name="Потребляемая мощность нагр., кВт">0.1</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Размеры ДхВхГ, мм">1190x700x200</param>
    <param name="Вес нетто, кг">27</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4642" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4642</url>
    <price>28809.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>166</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4642/b13bd7ce72-1_resize_1200x1200.jpg
    </picture>
    <name>SLZ-M25FA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,6кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.6</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.684</param>
    <param name="Потребляемая мощность нагр., кВт">0.886</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">15</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4643" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4643</url>
    <price>34749.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>166</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4643/746efee7a8-1_resize_1200x1200.jpg
    </picture>
    <name>SLZ-M35FA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.07</param>
    <param name="Потребляемая мощность нагр., кВт">0.07</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">800Ч285Ч550</param>
    <param name="Вес нетто, кг">15</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4644" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4644</url>
    <price>41118.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>166</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4644/d6f33b1798-1_resize_1200x1200.jpg
    </picture>
    <name>SLZ-M50FA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,6кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.6</param>
    <param name="Производительность нагр., кВт">5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.394</param>
    <param name="Потребляемая мощность нагр., кВт">1.558</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840Ч330Ч880</param>
    <param name="Вес нетто, кг">54</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4645" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4645</url>
    <price>48642.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>166</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4645/f3d323ddea-1_resize_1200x1200.jpg
    </picture>
    <name>SLZ-M60FA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,6кВт, Магистраль 6,35 (1/4) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.6</param>
    <param name="Производительность нагр., кВт">6.4</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.767</param>
    <param name="Потребляемая мощность нагр., кВт">2.278</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840Ч330Ч880</param>
    <param name="Вес нетто, кг">50</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4641" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4641</url>
    <price>25432.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>166</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4641/fedb7fdf95-1_resize_1200x1200.jpg
    </picture>
    <name>SLZ-KA25VAL</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,6кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.6</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.7</param>
    <param name="Потребляемая мощность нагр., кВт">0.85</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">570х570х235</param>
    <param name="Вес нетто, кг">16.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4639" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4639</url>
    <price>27846.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>166</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4639/9e686f503c-1_resize_1200x1200.jpg
    </picture>
    <name>SLZ-KF25VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,6кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.6</param>
    <param name="Производительность нагр., кВт">3.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.7</param>
    <param name="Потребляемая мощность нагр., кВт">0.85</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">570х570х235</param>
    <param name="Вес нетто, кг">16.5</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="4640" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4640</url>
    <price>46988.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>166</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4640/84046e1e8a-1_resize_1200x1200.jpg
    </picture>
    <name>SLZ-KF60VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,6кВт, Магистраль 6,35 (1/4) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.6</param>
    <param name="Производительность нагр., кВт">6.4</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.767</param>
    <param name="Потребляемая мощность нагр., кВт">2.278</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">570x570x245</param>
    <param name="Вес нетто, кг">15</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="5972" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5972</url>
    <price>42339.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>167</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5972/cf7a803663-1_resize_1200x1200.jpg
    </picture>
    <name>PLA-M35EA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,6кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.6</param>
    <param name="Производительность нагр., кВт">4.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 9,52 (3/8)</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">840x840x258</param>
    <param name="Вес нетто, кг">24</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5973" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5973</url>
    <price>45012.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>167</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5973/2b1aa9bf73-1_resize_1200x1200.jpg
    </picture>
    <name>PLA-M50EA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,5кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.5</param>
    <param name="Производительность нагр., кВт">5.8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">840x840x258</param>
    <param name="Вес нетто, кг">24</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5974" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5974</url>
    <price>45375.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>167</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5974/8cf0f76313-1_resize_1200x1200.jpg
    </picture>
    <name>PLA-M60EA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,7кВт, Магистраль 6,35 (1/4) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.7</param>
    <param name="Производительность нагр., кВт">6.9</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">840x840x258</param>
    <param name="Вес нетто, кг">26</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5975" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5975</url>
    <price>57420.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>167</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5975/2126c4f34b-1_resize_1200x1200.jpg
    </picture>
    <name>PLA-M71EA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">840x840x258</param>
    <param name="Вес нетто, кг">26</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5976" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5976</url>
    <price>71313.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>167</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5976/d80e9047ca-1_resize_1200x1200.jpg
    </picture>
    <name>PLA-M100EA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 9,4кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.4</param>
    <param name="Производительность нагр., кВт">11.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.07</param>
    <param name="Потребляемая мощность нагр., кВт">0.07</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">840x840x298</param>
    <param name="Вес нетто, кг">27</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5977" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5977</url>
    <price>76164.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>167</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5977/8430cc4771-1_resize_1200x1200.jpg
    </picture>
    <name>PLA-M125EA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.1</param>
    <param name="Производительность нагр., кВт">13.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.1</param>
    <param name="Потребляемая мощность нагр., кВт">0.1</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">840x840x298</param>
    <param name="Вес нетто, кг">29</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5978" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5978</url>
    <price>83193.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>167</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5978/88ff55fcb4-1_resize_1200x1200.jpg
    </picture>
    <name>PLA-M140EA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 13,6кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">13.6</param>
    <param name="Производительность нагр., кВт">15</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.1</param>
    <param name="Потребляемая мощность нагр., кВт">0.1</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">840x840x298</param>
    <param name="Вес нетто, кг">29</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5969" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5969</url>
    <price>40902.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>167</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5969/9595eaeca0-1_resize_1200x1200.jpg
    </picture>
    <name>PLA-RP35BA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">840x840x258</param>
    <param name="Вес нетто, кг">19</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5971" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5971</url>
    <price>44710.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>167</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5971/0c23b0dc75-1_resize_1200x1200.jpg
    </picture>
    <name>PLA-RP60EA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">7</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Потребляемая мощность нагр., кВт">0.03</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">840x840x258</param>
    <param name="Вес нетто, кг">21</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5984" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5984</url>
    <price>82632.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>168</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5984/d79a0a1ecb-1_resize_1200x1200.jpg
    </picture>
    <name>PKA-M71KAL</name>
    <description>Полупромышленный кондиционер, внутрений настенный</description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Настенный</param>
    <param name="Потребляемая мощность охл., кВт">0.06</param>
    <param name="Потребляемая мощность нагр., кВт">0.06</param>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">21</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="5980" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5980</url>
    <price>84249.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>168</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5980/a30f98e62e-1_resize_1200x1200.jpg
    </picture>
    <name>PKA-M100KAL</name>
    <description>Полупромышленный кондиционер, внутрений настенный</description>
    <param name="Производительность охл., кВт">10</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Настенный</param>
    <param name="Потребляемая мощность охл., кВт">0.14</param>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">22</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="5979" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5979</url>
    <price>51646.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>168</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5979/ec323e1965-1_resize_1200x1200.jpg
    </picture>
    <name>PKA-RP50HAL</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Хладагент">R410A</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="5991" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5991</url>
    <price>53823.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5991/930d1c54c5-1_resize_1200x1200.png
    </picture>
    <name>PCA-M35KA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Хладагент">R410A</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5992" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5992</url>
    <price>61710.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5992/82401c14d4-1_resize_1200x1200.png
    </picture>
    <name>PCA-M50KA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.1</param>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">25</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5993" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5993</url>
    <price>63690.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5993/59070152d5-1_resize_1200x1200.png
    </picture>
    <name>PCA-M60KA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Хладагент">R410A</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5994" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5994</url>
    <price>75405.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5994/4310fe9319-1_resize_1200x1200.png
    </picture>
    <name>PCA-M71KA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.06</param>
    <param name="Потребляемая мощность нагр., кВт">0.06</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9.52 (3/8) | 15.88 (5/8)</param>
    <param name="Размеры ДхВхГ, мм">1280x680x230</param>
    <param name="Вес нетто, кг">32</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5988" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5988</url>
    <price>79827.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5988/72a700a357-1_resize_1200x1200.png
    </picture>
    <name>PCA-M100KA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10кВт, питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.5</param>
    <param name="Производительность нагр., кВт">11.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.09</param>
    <param name="Потребляемая мощность нагр., кВт">0.09</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Размеры ДхВхГ, мм">1600x680x230</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5989" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5989</url>
    <price>94611.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5989/66224e74af-1_resize_1200x1200.png
    </picture>
    <name>PCA-M125KA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,3кВт, питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.3</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">45</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5990" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5990</url>
    <price>96426.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5990/fde6f4de0a-1_resize_1200x1200.png
    </picture>
    <name>PCA-M140KA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 13,4кВт, Магистраль 6,35 (1/4) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">13.4</param>
    <param name="Производительность нагр., кВт">16</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.14</param>
    <param name="Потребляемая мощность нагр., кВт">0.14</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1600x680x230</param>
    <param name="Вес нетто, кг">40</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5987" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5987</url>
    <price>118107.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5987/ef0e8d4d20-1_resize_1200x1200.jpg
    </picture>
    <name>PCA-RP71HAQ</name>
    <description>&lt;p&gt;питание 220-240В / 1Ф / 50Гц&lt;/p&gt;</description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Потребляемая мощность охл., кВт">0.1</param>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">41</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="8067" available="true">
    <url>https://b2b.ktg.in.ua/catalog/8067</url>
    <price>121686.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <name>PCA-M71HA</name>
    <description>&lt;p&gt;питание 220-240В / 1Ф / 50Гц&lt;/p&gt;</description>
    <param name="Производительность охл., кВт">7.5</param>
    <param name="Производительность нагр., кВт">9.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.09</param>
    <param name="Потребляемая мощность нагр., кВт">0.09</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9.52 (3/8) | 15.88 (5/8)</param>
    <param name="Размеры ДхВхГ, мм">1136x650x280</param>
    <param name="Вес нетто, кг">41</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5985" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5985</url>
    <price>53040.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5985/d572dffbc4-1_resize_1200x1200.jpg
    </picture>
    <name>PCA-RP35KAQ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,6кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.6</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">960х680х230</param>
    <param name="Вес нетто, кг">24</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5986" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5986</url>
    <price>62764.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5986/8e9a5d5839-1_resize_1200x1200.jpg
    </picture>
    <name>PCA-RP60KAQ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">7</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.06</param>
    <param name="Потребляемая мощность нагр., кВт">0.06</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1280х680х230</param>
    <param name="Вес нетто, кг">32</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5995" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5995</url>
    <price>74290.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>169</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5995/a39cf00b71-1_resize_1200x1200.jpg
    </picture>
    <name>PCA-RP71KAQ</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Подвесной</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.06</param>
    <param name="Потребляемая мощность нагр., кВт">0.06</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1280х680х230</param>
    <param name="Вес нетто, кг">32</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6015" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6015</url>
    <price>98274.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>171</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6015/716e6bec4d-1_resize_1200x1200.jpg
    </picture>
    <name>PSA-RP71KA</name>
    <description>Полупромышленный кондиционер, внутрений напольный</description>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">46</param>
    </offer>
    <offer id="6012" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6012</url>
    <price>103389.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>171</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6012/36a7934573-1_resize_1200x1200.jpg
    </picture>
    <name>PSA-RP100KA</name>
    <description>Полупромышленный кондиционер, внутрений напольный</description>
    <param name="Хладагент">R410A</param>
    </offer>
    <offer id="6014" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6014</url>
    <price>115665.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>171</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6014/2badaf4a8d-1_resize_1200x1200.jpg
    </picture>
    <name>PSA-RP140KA</name>
    <description>Полупромышленный кондиционер, внутрений напольный</description>
    <param name="Хладагент">R410A</param>
    </offer>
    <offer id="6008" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6008</url>
    <price>45210.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6008/2dbf6c1aba-1_resize_1200x1200.jpg
    </picture>
    <name>PEAD-M35JA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,6кВт, Магистраль 6,35 (1/4) / 12,7 (1/2) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.6</param>
    <param name="Производительность нагр., кВт">4.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.09</param>
    <param name="Потребляемая мощность нагр., кВт">0.09</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) / 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">900x732x250</param>
    <param name="Вес нетто, кг">26</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6009" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6009</url>
    <price>53394.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6009/7e1edf99f5-1_resize_1200x1200.jpg
    </picture>
    <name>PEAD-M50JA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4) / 12,7 (1/2) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.11</param>
    <param name="Потребляемая мощность нагр., кВт">0.11</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">900x732x250</param>
    <param name="Вес нетто, кг">27</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6010" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6010</url>
    <price>59697.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6010/a6ec7ad3d1-1_resize_1200x1200.jpg
    </picture>
    <name>PEAD-M60JA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">7</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.12</param>
    <param name="Потребляемая мощность нагр., кВт">0.12</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">1100x732x250</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6011" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6011</url>
    <price>66297.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6011/1c5ea28908-1_resize_1200x1200.jpg
    </picture>
    <name>PEAD-M71JA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.17</param>
    <param name="Потребляемая мощность нагр., кВт">0.17</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">1100x732x250</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6005" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6005</url>
    <price>67551.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6005/3f6b685257-1_resize_1200x1200.jpg
    </picture>
    <name>PEAD-M100JA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 9,5кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.5</param>
    <param name="Производительность нагр., кВт">11.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.25</param>
    <param name="Потребляемая мощность нагр., кВт">0.25</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">1400x732x250</param>
    <param name="Вес нетто, кг">39</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6006" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6006</url>
    <price>84645.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6006/4acf634116-1_resize_1200x1200.jpg
    </picture>
    <name>PEAD-M125JA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,5кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.5</param>
    <param name="Производительность нагр., кВт">14</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.36</param>
    <param name="Потребляемая мощность нагр., кВт">0.36</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">1400x732x250</param>
    <param name="Вес нетто, кг">40</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6007" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6007</url>
    <price>98142.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6007/1c7491e9ed-1_resize_1200x1200.jpg
    </picture>
    <name>PEAD-M140JA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 13,4кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">13.4</param>
    <param name="Производительность нагр., кВт">16</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.39</param>
    <param name="Потребляемая мощность нагр., кВт">0.39</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">1600x732x250</param>
    <param name="Вес нетто, кг">44</param>
    <param name="Тип управления">проводной пульт(опция)</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5999" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5999</url>
    <price>79398.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5999/111c42999a-1_resize_1200x1200.jpg
    </picture>
    <name>PEA-RP200GAQ</name>
    <description>
    Полупромышленный кондиционер, внутрений канальный- высокий напор
    </description>
    <param name="Производительность охл., кВт">19</param>
    <param name="Производительность нагр., кВт">22.4</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1</param>
    <param name="Потребляемая мощность нагр., кВт">1</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 25,4 (1)</param>
    <param name="Уровень шума, дБ(А)">48</param>
    <param name="Размеры ДхВхГ, мм">1400x634x400</param>
    <param name="Вес нетто, кг">70</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6000" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6000</url>
    <price>92664.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6000/d92334ea29-1_resize_1200x1200.jpg
    </picture>
    <name>PEA-RP250GAQ</name>
    <description>
    Полупромышленный кондиционер, внутрений канальный- высокий напор
    </description>
    <param name="Производительность охл., кВт">22</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Потребляемая мощность охл., кВт">0.3</param>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">90</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6001" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6001</url>
    <price>162096.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6001/b5464b6de2-1_resize_1200x1200.jpg
    </picture>
    <name>PEA-RP400GAQ</name>
    <description>
    Полупромышленный кондиционер, внутрений канальный- высокий напор
    </description>
    <param name="Производительность охл., кВт">38</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Потребляемая мощность охл., кВт">1.5</param>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">130</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6002" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6002</url>
    <price>179157.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>170</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6002/6f40263459-1_resize_1200x1200.jpg
    </picture>
    <name>PEA-RP500GAQ</name>
    <description>
    Полупромышленный кондиционер, внутрений канальный- высокий напор
    </description>
    <param name="Производительность охл., кВт">44</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Потребляемая мощность охл., кВт">2.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">134</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6026" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6026</url>
    <price>110517.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6026/fd3f39fbd1-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP35VKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 36кВт, Магистраль 6,35 (1/4) / 12,7 (1/2) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.6</param>
    <param name="Производительность нагр., кВт">4.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.83</param>
    <param name="Потребляемая мощность нагр., кВт">0.92</param>
    <param name="Заводская заправка хладогентом">2.2</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-11</param>
    <param name="Размеры ДхВхГ, мм">809x300x630</param>
    <param name="Вес нетто, кг">43</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6027" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6027</url>
    <price>122892.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6027/58d3ad22ca-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP50VKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4) / 12,7 (1/2) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.42</param>
    <param name="Потребляемая мощность нагр., кВт">1.81</param>
    <param name="Заводская заправка хладогентом">2.4</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-11</param>
    <param name="Размеры ДхВхГ, мм">809x300x630</param>
    <param name="Вес нетто, кг">46</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6033" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6033</url>
    <price>141801.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6033/50af5129c2-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP60VHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.1</param>
    <param name="Производительность нагр., кВт">7</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.75</param>
    <param name="Потребляемая мощность нагр., кВт">2.07</param>
    <param name="Заводская заправка хладогентом">3.5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">950x330x943</param>
    <param name="Вес нетто, кг">70</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6025" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6025</url>
    <price>150249.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6025/8d3e4c25dc-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP71VHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.87</param>
    <param name="Потребляемая мощность нагр., кВт">2.11</param>
    <param name="Заводская заправка хладогентом">3.5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">950x330x943</param>
    <param name="Вес нетто, кг">70</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6028" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6028</url>
    <price>180741.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6028/054455e79f-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP100VKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 9,5кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.5</param>
    <param name="Производительность нагр., кВт">11.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.23</param>
    <param name="Потребляемая мощность нагр., кВт">2.69</param>
    <param name="Заводская заправка хладогентом">5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1050x330x1338</param>
    <param name="Вес нетто, кг">116</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6024" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6024</url>
    <price>195195.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6024/e0bdc49230-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP100YKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 9,5кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.5</param>
    <param name="Производительность нагр., кВт">11.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-415 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.23</param>
    <param name="Потребляемая мощность нагр., кВт">2.69</param>
    <param name="Заводская заправка хладогентом">5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1050x330x1338</param>
    <param name="Вес нетто, кг">124</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6032" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6032</url>
    <price>194535.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6032/a1bf2b538c-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP125VKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,5кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.5</param>
    <param name="Производительность нагр., кВт">14</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.87</param>
    <param name="Потребляемая мощность нагр., кВт">3.77</param>
    <param name="Заводская заправка хладогентом">5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1050x330x1338</param>
    <param name="Вес нетто, кг">116</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6029" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6029</url>
    <price>210078.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6029/20ab6e840b-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP125YKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,5кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.5</param>
    <param name="Производительность нагр., кВт">14</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-415 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.23</param>
    <param name="Потребляемая мощность нагр., кВт">3.71</param>
    <param name="Заводская заправка хладогентом">5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1050x330x1338</param>
    <param name="Вес нетто, кг">126</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6030" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6030</url>
    <price>238887.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6030/a8647a7500-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP140VKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 13,4кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">13.4</param>
    <param name="Производительность нагр., кВт">16</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.39</param>
    <param name="Потребляемая мощность нагр., кВт">4.9</param>
    <param name="Заводская заправка хладогентом">5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1050x330x1338</param>
    <param name="Вес нетто, кг">118</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6031" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6031</url>
    <price>258126.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6031/1b48d8bd29-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP140YKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 13,4кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">13.4</param>
    <param name="Производительность нагр., кВт">16</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.39</param>
    <param name="Потребляемая мощность нагр., кВт">4.9</param>
    <param name="Заводская заправка хладогентом">5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1050x330x1338</param>
    <param name="Вес нетто, кг">132</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6023" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6023</url>
    <price>394119.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6023/3cd5072f26-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP200YKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 19кВт, Магистраль 9,52 (3/8) / 25,4 (1), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 100м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">19</param>
    <param name="Производительность нагр., кВт">22.4</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.62</param>
    <param name="Потребляемая мощность нагр., кВт">6.1</param>
    <param name="Заводская заправка хладогентом">7.1</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 25,4 (1)</param>
    <param name="Макс. длинна магистрали, м">100</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1050x330x1338</param>
    <param name="Вес нетто, кг">135</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6022" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6022</url>
    <price>440121.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6022/cbfe38932b-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-ZRP250YKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 22кВт, Магистраль 12,7 (1/2) / 25,4 (1), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 100м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">22</param>
    <param name="Производительность нагр., кВт">27</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">7.31</param>
    <param name="Потребляемая мощность нагр., кВт">7.92</param>
    <param name="Заводская заправка хладогентом">7.7</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">12,7 (1/2) | 25,4 (1)</param>
    <param name="Макс. длинна магистрали, м">100</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1050x330x1338</param>
    <param name="Вес нетто, кг">135</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6034" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6034</url>
    <price>178101.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>174</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6034/45d0dfb69e-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-FRP71VHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.87</param>
    <param name="Потребляемая мощность нагр., кВт">2.11</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">950x330 (+30)x943</param>
    <param name="Вес нетто, кг">73</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6042" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6042</url>
    <price>47091.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6042/67c58422a5-1_resize_1200x1200.jpg
    </picture>
    <name>SUZ-KA25VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.5</param>
    <param name="Производительность нагр., кВт">3.4</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.54</param>
    <param name="Потребляемая мощность нагр., кВт">0.77</param>
    <param name="Заводская заправка хладогентом">0.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Размеры ДхВхГ, мм">800x 285 x 550</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7866" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7866</url>
    <price>47091.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <name>SUZ-M25VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Хладагент">R32</param>
    </offer>
    <offer id="6039" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6039</url>
    <price>52272.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6039/5945ef8838-1_resize_1200x1200.jpg
    </picture>
    <name>SUZ-KA35VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.6</param>
    <param name="Производительность нагр., кВт">4.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.02</param>
    <param name="Потребляемая мощность нагр., кВт">1</param>
    <param name="Заводская заправка хладогентом">1.15</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 9,52 (3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">12</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">50</param>
    <param name="Размеры ДхВхГ, мм">800x285x550</param>
    <param name="Вес нетто, кг">35</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7867" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7867</url>
    <price>52272.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <name>SUZ-M35VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Хладагент">R32</param>
    </offer>
    <offer id="6040" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6040</url>
    <price>62799.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6040/59fd7c5779-1_resize_1200x1200.jpg
    </picture>
    <name>SUZ-KA50VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35 (1/4) / 12,7 (1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.5</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.61</param>
    <param name="Потребляемая мощность нагр., кВт">1.69</param>
    <param name="Заводская заправка хладогентом">1.6</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 12,7 (1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">54</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7869" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7869</url>
    <price>62832.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <name>SUZ-M50VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Хладагент">R32</param>
    </offer>
    <offer id="6038" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6038</url>
    <price>73359.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6038/28e945a5cd-1_resize_1200x1200.jpg
    </picture>
    <name>SUZ-KA60VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,1кВт, Магистраль 6,35 (1/4) / 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.7</param>
    <param name="Производительность нагр., кВт">6.9</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.76</param>
    <param name="Потребляемая мощность нагр., кВт">1.97</param>
    <param name="Заводская заправка хладогентом">1.6</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35 (1/4) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">54</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7868" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7868</url>
    <price>73392.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <name>SUZ-M60VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Хладагент">R32</param>
    </offer>
    <offer id="6041" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6041</url>
    <price>81246.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6041/a45ec524b9-1_resize_1200x1200.jpg
    </picture>
    <name>SUZ-KA71VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.1</param>
    <param name="Потребляемая мощность нагр., кВт">2.24</param>
    <param name="Заводская заправка хладогентом">1.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">840x330x880</param>
    <param name="Вес нетто, кг">53</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="7870" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7870</url>
    <price>81246.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <name>SUZ-M71VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,5кВт, Магистраль 6,35 (1/4) / 9,52 (3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 12м &lt;/p&gt;
    </description>
    <param name="Хладагент">R32</param>
    </offer>
    <offer id="6043" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6043</url>
    <price>142461.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6043/0fd0b038f4-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-P100VKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 9,4кВт, Магистраль 9,52 (3/8) / 15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.4</param>
    <param name="Производительность нагр., кВт">11.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.18</param>
    <param name="Потребляемая мощность нагр., кВт">3.26</param>
    <param name="Заводская заправка хладогентом">3.3</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">1050x330x981</param>
    <param name="Вес нетто, кг">76</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6044" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6044</url>
    <price>144639.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6044/6caae48740-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-P100YKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 9,4кВт, Магистраль 9,52 (3/8) / 15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.4</param>
    <param name="Производительность нагр., кВт">11.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.18</param>
    <param name="Потребляемая мощность нагр., кВт">3.26</param>
    <param name="Заводская заправка хладогентом">3.3</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">1050x330x982</param>
    <param name="Вес нетто, кг">76</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6047" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6047</url>
    <price>152592.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6047/9f08eca4da-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-P125VKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.1</param>
    <param name="Производительность нагр., кВт">13.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.1</param>
    <param name="Потребляемая мощность нагр., кВт">3.84</param>
    <param name="Заводская заправка хладогентом">3.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">1050x330x983</param>
    <param name="Вес нетто, кг">84</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6037" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6037</url>
    <price>164604.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6037/b223fcfa5f-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-P125YKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,1кВт, Магистраль 9,52 (3/8) / 15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.1</param>
    <param name="Производительность нагр., кВт">13.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.1</param>
    <param name="Потребляемая мощность нагр., кВт">3.84</param>
    <param name="Заводская заправка хладогентом">3.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">1050x330x984</param>
    <param name="Вес нетто, кг">84</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6045" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6045</url>
    <price>179421.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6045/49c2108a61-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-P140VKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 13,6кВт, Магистраль 9,52 (3/8) / 15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">13.6</param>
    <param name="Производительность нагр., кВт">15</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.41</param>
    <param name="Потребляемая мощность нагр., кВт">4.67</param>
    <param name="Заводская заправка хладогентом">3.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">1050x330x985</param>
    <param name="Вес нетто, кг">84</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6046" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6046</url>
    <price>193842.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6046/68e9247919-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-P140YKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 13,6кВт, Магистраль 9,52 (3/8) / 15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">13.6</param>
    <param name="Производительность нагр., кВт">15</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.41</param>
    <param name="Потребляемая мощность нагр., кВт">4.67</param>
    <param name="Заводская заправка хладогентом">3.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">1050x330x986</param>
    <param name="Вес нетто, кг">84</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6035" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6035</url>
    <price>305448.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6035/2fc8f54d9f-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-P200YKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 19кВт, Магистраль 9,52 (3/8) / 25,4(1), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 70м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">19</param>
    <param name="Производительность нагр., кВт">22.4</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.64</param>
    <param name="Потребляемая мощность нагр., кВт">7.1</param>
    <param name="Заводская заправка хладогентом">6.5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) / 25,4(1)</param>
    <param name="Макс. длинна магистрали, м">70</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1050x330(+40)x1338</param>
    <param name="Вес нетто, кг">127</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6036" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6036</url>
    <price>357819.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>175</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6036/292cc4918a-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-P250YKA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 19кВт, Магистраль 12,7 (1/2) / 25,4(1), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 70м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">19</param>
    <param name="Производительность нагр., кВт">27</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">8.71</param>
    <param name="Потребляемая мощность нагр., кВт">9.31</param>
    <param name="Заводская заправка хладогентом">7.7</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">12,7 (1/2) / 25,4(1)</param>
    <param name="Макс. длинна магистрали, м">70</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-20</param>
    <param name="Размеры ДхВхГ, мм">1050x330(+40)x1338</param>
    <param name="Вес нетто, кг">135</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6019" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6019</url>
    <price>276488.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>173</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6019/33bf81914f-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-SHW80VHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,1кВт, Магистраль 9,52 (3/8)/15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.1</param>
    <param name="Производительность нагр., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.15</param>
    <param name="Потребляемая мощность нагр., кВт">2.15</param>
    <param name="Заводская заправка хладогентом">5.5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) |15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">1350х330х950</param>
    <param name="Вес нетто, кг">120</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6020" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6020</url>
    <price>308448.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>173</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6020/ca078174ae-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-SHW112VHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10кВт, Магистраль 9,52 (3/8)/15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10</param>
    <param name="Производительность нагр., кВт">11.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.942</param>
    <param name="Потребляемая мощность нагр., кВт">2.942</param>
    <param name="Заводская заправка хладогентом">5.5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) |15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">1350х330х950</param>
    <param name="Вес нетто, кг">120</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6017" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6017</url>
    <price>334050.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>173</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6017/9630d4d58e-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-SHW112YHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10кВт, Магистраль 9,52 (3/8)/15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10</param>
    <param name="Производительность нагр., кВт">11.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-415 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.942</param>
    <param name="Потребляемая мощность нагр., кВт">2.942</param>
    <param name="Заводская заправка хладогентом">5.5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) |15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">1350х330х950</param>
    <param name="Вес нетто, кг">134</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6018" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6018</url>
    <price>363132.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>173</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6018/08799ce200-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-SHW140YHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,5кВт, Магистраль 9,52 (3/8)/15,88 (5/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.5</param>
    <param name="Производительность нагр., кВт">14</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5</param>
    <param name="Потребляемая мощность нагр., кВт">5</param>
    <param name="Заводская заправка хладогентом">5.5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8) |15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-28</param>
    <param name="Размеры ДхВхГ, мм">1350х330х950</param>
    <param name="Вес нетто, кг">134</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6021" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6021</url>
    <price>585222.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>173</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6021/c25bf8a530-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-SHW230YKA2</name>
    <description>
    &lt;p&gt;Мощность охлаждения 20кВт, Магистраль 12,7 (1/2/25,5 (1) или 28,8 (1-1/8) , питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 80м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">20</param>
    <param name="Производительность нагр., кВт">23</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-415 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">9.01</param>
    <param name="Потребляемая мощность нагр., кВт">6.31</param>
    <param name="Заводская заправка хладогентом">7.1</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">12,7 (1/2) | 25,5 (1)</param>
    <param name="Макс. длинна магистрали, м">80</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">1338х330х1050</param>
    <param name="Вес нетто, кг">145</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6072" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6072</url>
    <price>129987.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>177</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6072/d0f01d7cd0-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-SW40VHA</name>
    <description>
    Полупромышленный кондиционер, наружный блок со встроенным теплообменником (Power Inverter)
    </description>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">45</param>
    </offer>
    <offer id="6071" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6071</url>
    <price>238161.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>177</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6071/7d3700cef5-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-SW120YHA</name>
    <description>
    Полупромышленный кондиционер, наружный блок со встроенным теплообменником (Power Inverter)
    </description>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">118</param>
    </offer>
    <offer id="6075" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6075</url>
    <price>296043.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>177</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6075/eb8f94728d-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-SW160YKA</name>
    <description>
    Полупромышленный кондиционер, наружный блок со встроенным теплообменником (Power Inverter)
    </description>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">136</param>
    </offer>
    <offer id="6076" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6076</url>
    <price>348612.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>177</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6076/20ffa386cc-1_resize_1200x1200.jpg
    </picture>
    <name>PUHZ-SW200YKA</name>
    <description>
    Полупромышленный кондиционер, наружный блок со встроенным теплообменником (Power Inverter)
    </description>
    <param name="Производительность охл., кВт">5.36</param>
    <param name="Производительность нагр., кВт">6.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Да</param>
    <param name="Потребляемая мощность охл., кВт">22</param>
    <param name="Потребляемая мощность нагр., кВт">25</param>
    <param name="Заводская заправка хладогентом">7.7</param>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">128</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6062" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6062</url>
    <price>191420.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>177</categoryId>
    <name>PUHZ-W50VHA</name>
    <description>
    Полупромышленный кондиционер, наружный блок со встроенным теплообменником (Power Inverter)
    </description>
    <param name="Хладагент">R410A</param>
    </offer>
    <offer id="6060" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6060</url>
    <price>87087.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>176</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6060/5fe23ad447-1_resize_1200x1200.jpg
    </picture>
    <name>PU-P71VHA</name>
    <description>
    &lt;p&gt;Магистраль 9,52 (3/8 )/ 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 50м &lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Заводская заправка хладогентом">4.4</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8 )/ 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">50</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">950x360x943</param>
    <param name="Вес нетто, кг">93</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6061" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6061</url>
    <price>87087.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>176</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6061/a52a1fc400-1_resize_1200x1200.jpg
    </picture>
    <name>PU-P71YHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 8кВт, Магистраль 9,52 (3/8 )/ 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 50м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">380-415 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.83</param>
    <param name="Заводская заправка хладогентом">3.6</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8 ) | 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">50</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">950x360x943</param>
    <param name="Вес нетто, кг">93</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6056" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6056</url>
    <price>107646.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>176</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6056/f251dbafd7-1_resize_1200x1200.jpg
    </picture>
    <name>PU-P100VHA</name>
    <description>
    &lt;p&gt;Магистраль 9,52 (3/8 )/ 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 50м &lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Заводская заправка хладогентом">4.4</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8 )/ 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">50</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">950x360x943</param>
    <param name="Вес нетто, кг">94</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6057" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6057</url>
    <price>107646.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>176</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6057/d8f7bd3b9a-1_resize_1200x1200.jpg
    </picture>
    <name>PU-P100YHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10кВт, Магистраль 9,52 (3/8 )/ 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 50м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.53</param>
    <param name="Заводская заправка хладогентом">4.4</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8 )/ 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">50</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">950x360x943</param>
    <param name="Вес нетто, кг">94</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6058" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6058</url>
    <price>124740.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>176</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6058/99b8b331b3-1_resize_1200x1200.jpg
    </picture>
    <name>PU-P125YHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,3кВт, Магистраль 9,52 (3/8 )/ 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 50м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.3</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.36</param>
    <param name="Заводская заправка хладогентом">5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8 )/ 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">50</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">950x360x1350</param>
    <param name="Вес нетто, кг">131</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6059" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6059</url>
    <price>147345.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>176</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6059/9a2d8fbbdc-1_resize_1200x1200.jpg
    </picture>
    <name>PU-P140YHA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,2кВт, Магистраль 9,52 (3/8 )/ 15,88 (5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 50м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.41</param>
    <param name="Заводская заправка хладогентом">5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52 (3/8 )/ 15,88 (5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">50</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Размеры ДхВхГ, мм">950x360x1350</param>
    <param name="Вес нетто, кг">131</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="6407" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6407</url>
    <price>366564.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>179</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6407/08bd389810-1_resize_1200x1200.jpg
    </picture>
    <name>EHST20C-YM9C</name>
    <description>Гидромодуль для нагрева воды</description>
    <param name="Вес нетто, кг">106</param>
    </offer>
    <offer id="6421" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6421</url>
    <price>215193.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>180</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6421/532f41609e-1_resize_1200x1200.jpg
    </picture>
    <name>EHSC-VM6C</name>
    <description>Гидромодуль для нагрева воды</description>
    <param name="Вес нетто, кг">56</param>
    </offer>
    <offer id="6422" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6422</url>
    <price>219978.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>180</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6422/fca5b9fc84-1_resize_1200x1200.jpg
    </picture>
    <name>EHSC-YM9C</name>
    <description>Гидромодуль для нагрева воды</description>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">60</param>
    </offer>
    <offer id="6426" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6426</url>
    <price>197538.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>180</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6426/20a6955873-1_resize_1200x1200.jpg
    </picture>
    <name>EHSC-MEC</name>
    <description>Гидромодуль для нагрева воды</description>
    <param name="Вес нетто, кг">42</param>
    </offer>
    <offer id="6418" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6418</url>
    <price>321255.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>180</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6418/bec7300932-1_resize_1200x1200.jpg
    </picture>
    <name>EHSE-YM9EC</name>
    <description>Гидромодуль для нагрева воды</description>
    <param name="Вес нетто, кг">62</param>
    </offer>
    <offer id="6417" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6417</url>
    <price>332343.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>180</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6417/f5c3d35398-1_resize_1200x1200.jpg
    </picture>
    <name>ERSE-MEC</name>
    <description>Гидромодуль для нагрева воды</description>
    <param name="Вес нетто, кг">61</param>
    </offer>
    <offer id="6416" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6416</url>
    <price>343233.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>180</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6416/4de6216e6e-1_resize_1200x1200.jpg
    </picture>
    <name>ERSE-YM9EC</name>
    <description>Гидромодуль для нагрева воды</description>
    <param name="Вес нетто, кг">63</param>
    </offer>
    <offer id="5522" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5522</url>
    <price>11814.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>215</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5522/3815fa0bd6-1_resize_1200x1200.jpg
    </picture>
    <name>VL-50ES2-E</name>
    <description>
    &lt;p&gt;Расход воздуха 51м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 86% , статическое давление 10Па , уровень шума 14дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Макс потребляемая мощность кВт">0.02</param>
    <param name="Расход воздуха, м3/ч">51</param>
    <param name="Статическое давление, Па">10</param>
    <param name="Эффективность рекуператора, %">86</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">14</param>
    <param name="Размеры ДхВхГ, мм">522х245х168</param>
    <param name="Вес нетто, кг">6.2</param>
    <param name="Тип управления">опция</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5523" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5523</url>
    <price>11814.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>215</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5523/bdbff5f82d-1_resize_1200x1200.jpg
    </picture>
    <name>VL-50S2-E</name>
    <description>
    &lt;p&gt;Расход воздуха 51м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 86% , статическое давление 10Па , уровень шума 14дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Макс потребляемая мощность кВт">0.02</param>
    <param name="Расход воздуха, м3/ч">51</param>
    <param name="Статическое давление, Па">10</param>
    <param name="Эффективность рекуператора, %">86</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">14</param>
    <param name="Размеры ДхВхГ, мм">522х245х168</param>
    <param name="Вес нетто, кг">6.2</param>
    <param name="Тип управления">встроенный</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5525" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5525</url>
    <price>12606.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>215</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5525/70a900a50f-1_resize_1200x1200.jpg
    </picture>
    <name>VL-50SR2-E</name>
    <description>
    &lt;p&gt;Расход воздуха 51м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 86% , статическое давление 10Па , уровень шума 14дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.02</param>
    <param name="Макс потребляемая мощность кВт">0.02</param>
    <param name="Расход воздуха, м3/ч">51</param>
    <param name="Статическое давление, Па">10</param>
    <param name="Эффективность рекуператора, %">86</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">14</param>
    <param name="Размеры ДхВхГ, мм">522х245х168</param>
    <param name="Вес нетто, кг">6.2</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5521" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5521</url>
    <price>13101.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>215</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5521/13ad3aa04d-1_resize_1200x1200.jpg
    </picture>
    <name>VL-100EU5-E</name>
    <description>
    &lt;p&gt;Расход воздуха 100м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 80% , статическое давление 10Па , уровень шума 24дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Макс потребляемая мощность кВт">0.03</param>
    <param name="Расход воздуха, м3/ч">100</param>
    <param name="Статическое давление, Па">10</param>
    <param name="Эффективность рекуператора, %">80</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">24</param>
    <param name="Размеры ДхВхГ, мм">620х265х200</param>
    <param name="Вес нетто, кг">7.5</param>
    <param name="Тип управления">опция</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="7394" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7394</url>
    <price>12818.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>215</categoryId>
    <name>VL-100U5-E</name>
    <description>
    Бытовая серия, приточно-вытяжная установка с рекуперацией Лоссней
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.03</param>
    <param name="Макс потребляемая мощность кВт">0.03</param>
    <param name="Расход воздуха, м3/ч">100</param>
    <param name="Статическое давление, Па">10</param>
    <param name="Эффективность рекуператора, %">80</param>
    <param name="Мин. температура окр. среды">-10</param>
    <param name="Уровень шума, дБ(А)">24</param>
    <param name="Размеры ДхВхГ, мм">620х265х200</param>
    <param name="Вес нетто, кг">7.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5518" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5518</url>
    <price>97878.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>215</categoryId>
    <name>VL-250CZPVU-L</name>
    <description>
    &lt;p&gt;Расход воздуха 250м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 90% , статическое давление 150Па , уровень шума 15дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Расход воздуха, м3/ч">250</param>
    <param name="Статическое давление, Па">150</param>
    <param name="Эффективность рекуператора, %">90</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Уровень шума, дБ(А)">15</param>
    <param name="Размеры ДхВхГ, мм">563х595х356</param>
    <param name="Вес нетто, кг">26</param>
    <param name="Тип управления">встроенный</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5517" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5517</url>
    <price>97878.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>215</categoryId>
    <name>VL-250CZPVU-R</name>
    <description>
    &lt;p&gt;Расход воздуха 250м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 90% , статическое давление 150Па , уровень шума 15дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.1</param>
    <param name="Расход воздуха, м3/ч">250</param>
    <param name="Статическое давление, Па">150</param>
    <param name="Эффективность рекуператора, %">90</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">15</param>
    <param name="Размеры ДхВхГ, мм">563х595х356</param>
    <param name="Вес нетто, кг">26</param>
    <param name="Тип управления">встроенный</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5520" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5520</url>
    <price>119625.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>215</categoryId>
    <name>VL-350CZPVU-L</name>
    <description>
    &lt;p&gt;Расход воздуха 350м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 90% , статическое давление 150Па , уровень шума 15дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.16</param>
    <param name="Расход воздуха, м3/ч">320</param>
    <param name="Статическое давление, Па">150</param>
    <param name="Эффективность рекуператора, %">90</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">15</param>
    <param name="Размеры ДхВхГ, мм">658×432×623</param>
    <param name="Вес нетто, кг">32</param>
    <param name="Тип управления">встроенный</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="7657" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7657</url>
    <price>162954.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>215</categoryId>
    <name>VL-500CZPVU-L</name>
    <description>
    &lt;p&gt;Расход воздуха 350м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 90% , статическое давление 150Па , уровень шума 15дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.25</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Вес нетто, кг">48</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5519" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5519</url>
    <price>119625.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>215</categoryId>
    <name>VL-350CZPVU-R</name>
    <description>
    &lt;p&gt;Расход воздуха 350м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 90% , статическое давление 150Па , уровень шума 15дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.16</param>
    <param name="Расход воздуха, м3/ч">320</param>
    <param name="Статическое давление, Па">150</param>
    <param name="Эффективность рекуператора, %">90</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">15</param>
    <param name="Размеры ДхВхГ, мм">658×432×623</param>
    <param name="Вес нетто, кг">32</param>
    <param name="Тип управления">встроенный</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5543" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5543</url>
    <price>47487.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>216</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5543/e7a7cf0cb6-1_resize_1200x1200.jpg
    </picture>
    <name>LGH-15RVX-E</name>
    <description>
    &lt;p&gt;Расход воздуха 150м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 84% , статическое давление 95Па , уровень шума 17дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.05</param>
    <param name="Потребляемая мощность нагр., кВт">0.05</param>
    <param name="Макс потребляемая мощность кВт">0.05</param>
    <param name="Расход воздуха, м3/ч">150</param>
    <param name="Статическое давление, Па">95</param>
    <param name="Эффективность рекуператора, %">84</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">17</param>
    <param name="Размеры ДхВхГ, мм">610х273х780</param>
    <param name="Вес нетто, кг">20</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5544" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5544</url>
    <price>59664.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>216</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5544/6e3e29f700-1_resize_1200x1200.jpg
    </picture>
    <name>LGH-25RVX-E</name>
    <description>
    &lt;p&gt;Расход воздуха 250м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 86% , статическое давление 85Па , уровень шума 17дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.06</param>
    <param name="Потребляемая мощность нагр., кВт">0.06</param>
    <param name="Макс потребляемая мощность кВт">0.06</param>
    <param name="Расход воздуха, м3/ч">250</param>
    <param name="Статическое давление, Па">85</param>
    <param name="Эффективность рекуператора, %">86</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">17</param>
    <param name="Размеры ДхВхГ, мм">735х273х780</param>
    <param name="Вес нетто, кг">23</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5545" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5545</url>
    <price>83358.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>216</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5545/1c4502fbb3-1_resize_1200x1200.jpg
    </picture>
    <name>LGH-35RVX-E</name>
    <description>
    &lt;p&gt;Расход воздуха 350м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 88,5% , статическое давление 160Па , уровень шума 17дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.14</param>
    <param name="Потребляемая мощность нагр., кВт">0.14</param>
    <param name="Макс потребляемая мощность кВт">0.14</param>
    <param name="Расход воздуха, м3/ч">350</param>
    <param name="Статическое давление, Па">160</param>
    <param name="Эффективность рекуператора, %">88.5</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">17</param>
    <param name="Размеры ДхВхГ, мм">874х315х888</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5546" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5546</url>
    <price>98076.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>216</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5546/dd404ad59c-1_resize_1200x1200.jpg
    </picture>
    <name>LGH-50RVX-E</name>
    <description>
    &lt;p&gt;Расход воздуха 500м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 87% , статическое давление 120Па , уровень шума 18дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.17</param>
    <param name="Макс потребляемая мощность кВт">0.17</param>
    <param name="Расход воздуха, м3/ч">500</param>
    <param name="Статическое давление, Па">120</param>
    <param name="Эффективность рекуператора, %">87</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">18</param>
    <param name="Размеры ДхВхГ, мм">1016х315х888</param>
    <param name="Вес нетто, кг">33</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5547" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5547</url>
    <price>115731.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>216</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5547/82c1854986-1_resize_1200x1200.jpg
    </picture>
    <name>LGH-65RVX-E</name>
    <description>
    &lt;p&gt;Расход воздуха 650м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 86% , статическое давление 120Па , уровень шума 18дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.25</param>
    <param name="Потребляемая мощность нагр., кВт">0.25</param>
    <param name="Макс потребляемая мощность кВт">0.25</param>
    <param name="Расход воздуха, м3/ч">650</param>
    <param name="Статическое давление, Па">120</param>
    <param name="Эффективность рекуператора, %">86</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">18</param>
    <param name="Размеры ДхВхГ, мм">954х386х908</param>
    <param name="Вес нетто, кг">38</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5548" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5548</url>
    <price>117183.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>216</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5548/2b66568a7c-1_resize_1200x1200.jpg
    </picture>
    <name>LGH-80RVX-E</name>
    <description>
    &lt;p&gt;Расход воздуха 800м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 85% , статическое давление 150Па , уровень шума 18дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.34</param>
    <param name="Макс потребляемая мощность кВт">0.34</param>
    <param name="Расход воздуха, м3/ч">800</param>
    <param name="Статическое давление, Па">150</param>
    <param name="Эффективность рекуператора, %">85</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">18</param>
    <param name="Размеры ДхВхГ, мм">1004х399х1144</param>
    <param name="Вес нетто, кг">48</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5549" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5549</url>
    <price>146619.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>216</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5549/7f333c389d-1_resize_1200x1200.jpg
    </picture>
    <name>LGH-100RVX-E</name>
    <description>
    &lt;p&gt;Расход воздуха 1000м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 87% , статическое давление 170Па , уровень шума 18дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.4</param>
    <param name="Потребляемая мощность нагр., кВт">0.4</param>
    <param name="Макс потребляемая мощность кВт">0.42</param>
    <param name="Расход воздуха, м3/ч">1000</param>
    <param name="Статическое давление, Па">170</param>
    <param name="Эффективность рекуператора, %">87</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">18</param>
    <param name="Размеры ДхВхГ, мм">1231х399х1144</param>
    <param name="Вес нетто, кг">54</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5550" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5550</url>
    <price>264000.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>216</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5550/6024ddcac5-1_resize_1200x1200.jpg
    </picture>
    <name>LGH-150RVX-E</name>
    <description>
    Полупромышленная серия, приточно-вытяжная установка с рекуперацией Лоссней
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.6</param>
    <param name="Потребляемая мощность нагр., кВт">0.6</param>
    <param name="Уровень шума, дБ(А)">18</param>
    <param name="Размеры ДхВхГ, мм">1004х1144х798</param>
    <param name="Вес нетто, кг">98</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5553" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5553</url>
    <price>345576.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>216</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5553/1c44b9ee9a-1_resize_1200x1200.jpg
    </picture>
    <name>LGH-200RVXT-E</name>
    <description>
    Полупромышленная серия, приточно-вытяжная установка с рекуперацией Лоссней
    </description>
    <param name="Вес нетто, кг">110</param>
    </offer>
    <offer id="5554" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5554</url>
    <price>436227.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>216</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5554/e7a6d2ec65-1_resize_1200x1200.jpg
    </picture>
    <name>LGH-250RVXT-E</name>
    <description>
    Полупромышленная серия, приточно-вытяжная установка с рекуперацией Лоссней
    </description>
    <param name="Вес нетто, кг">198</param>
    </offer>
    <offer id="4608" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4608</url>
    <price>79992.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>214</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4608/44eb1491cd-1_resize_1200x1200.jpg
    </picture>
    <name>GUG-02SL-E</name>
    <description>
    Полупромышленная серия, приточно-вытяжная установка с рекуперацией Лоссней
    </description>
    <param name="Производительность охл., кВт">6.6</param>
    <param name="Производительность нагр., кВт">7</param>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Тип блока">Канальный</param>
    <param name="Серия">LOSSNAY</param>
    <param name="Вес нетто, кг">28</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="14" available="true">
    <url>https://b2b.ktg.in.ua/catalog/14</url>
    <price>11385.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>213</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems14/e5a87730a4-1_resize_1200x1200.jpg
    </picture>
    <name>PZ-61DR-E</name>
    <description>Проводной пульт для управления Лоссней</description>
    <param name="Вес нетто, кг">0.8</param>
    <param name="Страна производитель">Китай</param>
    </offer>
    <offer id="5966" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5966</url>
    <price>2079.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>217</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5966/31e2969ce0-1_resize_1200x1200.jpg
    </picture>
    <name>P-100F5-E</name>
    <description>Антиаллергенная фильтрующая вставка</description>
    <param name="Вес нетто, кг">0.1</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5959" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5959</url>
    <price>3993.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>217</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5959/a7dfb122ab-1_resize_1200x1200.jpg
    </picture>
    <name>P-100HF5-E</name>
    <description>Антиаллергенная фильтрующая вставка</description>
    <param name="Вес нетто, кг">0.05</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5960" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5960</url>
    <price>1485.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>217</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5960/1ee22e078d-1_resize_1200x1200.jpg
    </picture>
    <name>P-100P-E</name>
    <description>Антиаллергенная фильтрующая вставка</description>
    <param name="Вес нетто, кг">0.19</param>
    </offer>
    <offer id="5961" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5961</url>
    <price>1485.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>217</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5961/d4fc1b4718-1_resize_1200x1200.jpg
    </picture>
    <name>P-100PJ-E</name>
    <description>Антиаллергенная фильтрующая вставка</description>
    <param name="Вес нетто, кг">0.15</param>
    </offer>
    <offer id="5945" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5945</url>
    <price>18117.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>217</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5945/65975bf9d0-1_resize_1200x1200.jpg
    </picture>
    <name>P-133DUE-E</name>
    <description>Контроллер для подключения к секции охлаждения</description>
    <param name="Вес нетто, кг">3.1</param>
    </offer>
    <offer id="5939" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5939</url>
    <price>9504.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>217</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5939/aa8500e5b9-1_resize_1200x1200.jpg
    </picture>
    <name>PZ-50RF8-E</name>
    <description>
    PZ-35RFM Высокоэффективный фильтр (EU-F7) для LGH-35RX5-E
    </description>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5958" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5958</url>
    <price>11517.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>217</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5958/cb42ab514e-1_resize_1200x1200.jpg
    </picture>
    <name>PZ-50RFM-E</name>
    <description>
    PZ-50RFM Высокоэффективный фильтр (EU-F7) для LGH-50RX5-E
    </description>
    <param name="Вес нетто, кг">0.6</param>
    </offer>
    <offer id="5941" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5941</url>
    <price>12738.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>217</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5941/9260105694-1_resize_1200x1200.jpg
    </picture>
    <name>PZ-65RFM-E</name>
    <description>
    PZ-50RFM Высокоэффективный фильтр (EU-F7) для LGH-50RX5-E
    </description>
    <param name="Вес нетто, кг">0.68</param>
    </offer>
    <offer id="5943" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5943</url>
    <price>15114.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>217</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5943/7fb4fd0707-1_resize_1200x1200.jpg
    </picture>
    <name>PZ-100RFM-E</name>
    <description>
    PZ-80RFM Высокоэффективный фильтр (EU-F7) для LGH-80RX5-E
    </description>
    <param name="Вес нетто, кг">0.98</param>
    </offer>
    <offer id="5944" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5944</url>
    <price>9603.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>217</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5944/b8dcf0ac99-1_resize_1200x1200.jpg
    </picture>
    <name>PZ-100RF8-E</name>
    <description>
    PZ-35RFM Высокоэффективный фильтр (EU-F7) для LGH-35RX5-E
    </description>
    <param name="Вес нетто, кг">0.19</param>
    </offer>
    <offer id="7812" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7812</url>
    <price>9306.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <name>PAR-41MAR</name>
    <description>Настенный пульт управления</description>
    <param name="Вес нетто, кг">0.7</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6087" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6087</url>
    <price>6204.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6087/86aab47bc1-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-SA9CA-E</name>
    <description>Приемник ИК-сигналов для беспроводного пульта</description>
    <param name="Вес нетто, кг">0.56</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6088" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6088</url>
    <price>4455.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6088/eac70ca637-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-SA9FA-E</name>
    <description>Приемник ИК-сигналов для беспроводного пульта</description>
    <param name="Вес нетто, кг">0.42</param>
    </offer>
    <offer id="6090" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6090</url>
    <price>2706.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6090/d8d2d90c6a-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-SL97A-E</name>
    <description>Беспроводной пульт управления</description>
    <param name="Вес нетто, кг">0.2</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6091" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6091</url>
    <price>6270.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6091/8f9f6c8de5-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-SL100A-E</name>
    <description>Беспроводной пульт управления</description>
    <param name="Вес нетто, кг">0.17</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6092" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6092</url>
    <price>7062.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6092/d173b9f64d-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-WT50R-E</name>
    <description>Пульт управления</description>
    <param name="Вес нетто, кг">0.45</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6093" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6093</url>
    <price>5445.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6093/25b89312d6-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-WR51R-E</name>
    <description>Пульт управления</description>
    <param name="Вес нетто, кг">0.51</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6094" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6094</url>
    <price>14553.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6094/1f34525c92-1_resize_1200x1200.png
    </picture>
    <name>PAR-U02MEDA-K</name>
    <description>Настенный пульт управления</description>
    <param name="Вес нетто, кг">0.3</param>
    </offer>
    <offer id="6095" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6095</url>
    <price>12177.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6095/3d63cf8606-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-CT01MAR-SB</name>
    <description>Настенный пульт управления</description>
    <param name="Вес нетто, кг">0.6</param>
    <param name="Страна производитель">Малайзия</param>
    </offer>
    <offer id="6096" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6096</url>
    <price>14652.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6096/2edda6245a-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-CT01MAR-PB</name>
    <description>Настенный пульт управления</description>
    <param name="Вес нетто, кг">0.6</param>
    <param name="Страна производитель">Малайзия</param>
    </offer>
    <offer id="6097" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6097</url>
    <price>12144.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6097/16285fa9d4-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-SL94B-E</name>
    <description>Беспроводной пульт управления</description>
    <param name="Вес нетто, кг">0.6</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="6098" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6098</url>
    <price>8877.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6098/99be6a6216-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-33MAAG-J</name>
    <description>Настенный пульт управления</description>
    <param name="Вес нетто, кг">0.69</param>
    </offer>
    <offer id="6099" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6099</url>
    <price>3597.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6099/d6b195d81e-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-SE9FA-E</name>
    <description>Приемник ИК-сигналов для беспроводного пульта</description>
    <param name="Вес нетто, кг">0.1</param>
    </offer>
    <offer id="6100" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6100</url>
    <price>9207.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>144</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6100/2cf9d47527-1_resize_1200x1200.jpg
    </picture>
    <name>PAR-40MAA</name>
    <description>Настенный пульт управления</description>
    <param name="Вес нетто, кг">0.7</param>
    <param name="Страна производитель">Китай</param>
    </offer>
    <offer id="7813" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7813</url>
    <price>2244.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>143</categoryId>
    <name>MAC-587IF-E</name>
    <description>Конвертер для подключения к сети WiFi</description>
    <param name="Вес нетто, кг">0.28</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5530" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5530</url>
    <price>7656.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>143</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5530/ba632d3c7b-1_resize_1200x1200.jpg
    </picture>
    <name>MAC-397IF-E</name>
    <description>
    Конвертер для подключения проводного пульта PAR-**MAA
    </description>
    <param name="Вес нетто, кг">0.72</param>
    </offer>
    <offer id="5532" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5532</url>
    <price>30129.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>143</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5532/010fda95cc-1_resize_1200x1200.jpg
    </picture>
    <name>INMBSMIT001I000</name>
    <description>Контроллер, модем</description>
    <param name="Вес нетто, кг">0.25</param>
    <param name="Страна производитель">Испания</param>
    </offer>
    <offer id="5533" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5533</url>
    <price>25364.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>143</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5533/42707aa404-1_resize_1200x1200.jpg
    </picture>
    <name>ME-AC-MBS-1</name>
    <description>Контроллер, модем</description>
    <param name="Вес нетто, кг">0.11</param>
    </offer>
    <offer id="5534" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5534</url>
    <price>12540.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>143</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5534/24decc06d2-1_resize_1200x1200.jpg
    </picture>
    <name>MAC-333IF-E</name>
    <description>Конвертер для подключения к сигнальной линии</description>
    <param name="Вес нетто, кг">0.72</param>
    </offer>
    <offer id="5536" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5536</url>
    <price>2310.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>143</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5536/1a322ca7b0-1_resize_1200x1200.jpg
    </picture>
    <name>MAC-567IF-E1</name>
    <description>Конвертер для подключения к сети WiFi</description>
    <param name="Вес нетто, кг">0.28</param>
    <param name="Wi-Fi">Опция</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="5537" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5537</url>
    <price>12546.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>143</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5537/7e3d8f51e5-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SJ95MA-E</name>
    <description>Панель защиты от ветра</description>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5539" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5539</url>
    <price>10032.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>143</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5539/74382f5375-1_resize_1200x1200.jpg
    </picture>
    <name>MAC-334IF-E</name>
    <description>Конвертер для подключения к сигнальной линии</description>
    <param name="Вес нетто, кг">0.72</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="4612" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4612</url>
    <price>46761.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>142</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4612/4c2b3e86cd-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SIF051B-E</name>
    <description>Контроллер компрессорно-конденсаторных агрегатов</description>
    <param name="Серия">CITY MULTI</param>
    <param name="Вес нетто, кг">2.85</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="4615" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4615</url>
    <price>84282.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>142</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4615/cf2ad4399e-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-IF061B-E</name>
    <description>Контроллер компрессорно-конденсаторных агрегатов</description>
    <param name="Вес нетто, кг">4.4</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="4616" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4616</url>
    <price>65637.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>142</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4616/813b2f979f-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-IF032B-E</name>
    <description>Контроллер компрессорно-конденсаторных агрегатов</description>
    <param name="Вес нетто, кг">3.72</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="4617" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4617</url>
    <price>42405.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>142</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4617/94c9e5b686-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-IF012B-E</name>
    <description>Контроллер для подключения к секции охлаждения</description>
    <param name="Вес нетто, кг">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="4618" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4618</url>
    <price>42438.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>142</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4618/65b2945832-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SIF013B-E</name>
    <description>Контроллер компрессорно-конденсаторных агрегатов</description>
    <param name="Вес нетто, кг">3.5</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="4619" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4619</url>
    <price>49467.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>142</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4619/8af277d4f9-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-IF013B-E</name>
    <description>Контроллер для подключения к секции охлаждения</description>
    <param name="Вес нетто, кг">3.5</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5967" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5967</url>
    <price>4587.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>182</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5967/6e87b5b77c-1_resize_1200x1200.jpeg
    </picture>
    <name>PAC-SF1ME-E - I-SEE</name>
    <description>Плата управления</description>
    <param name="Вес нетто, кг">0.11</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="5968" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5968</url>
    <price>4422.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>182</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5968/6266d17f21-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SE1ME-E</name>
    <description>I-SEE сенсор для декоративной панели</description>
    <param name="Вес нетто, кг">0.12</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6078" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6078</url>
    <price>12738.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>181</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6078/a24cf1c1b4-1_resize_1200x1200.jpg
    </picture>
    <name>PLP-6BA</name>
    <description>
    &lt;p&gt;Декоративная панель Mitsubishi Electric&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Вес нетто, кг">6</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6079" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6079</url>
    <price>8250.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>181</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6079/b8b0f71c8a-1_resize_1200x1200.jpg
    </picture>
    <name>SLP-2ALW</name>
    <description>
    &lt;p&gt;Декоративная панель Mitsubishi Electric&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Вес нетто, кг">4</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6080" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6080</url>
    <price>18315.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>181</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6080/d7e14280ef-1_resize_1200x1200.jpg
    </picture>
    <name>PLP-6EAER1</name>
    <description>
    &lt;p&gt;Декоративная панель Mitsubishi Electric&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Вес нетто, кг">5</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6081" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6081</url>
    <price>8019.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>181</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6081/1f5b0e0950-1_resize_1200x1200.jpg
    </picture>
    <name>SLP-2FAL</name>
    <description>
    &lt;p&gt;Декоративная панель Mitsubishi Electric&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Вес нетто, кг">3</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6084" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6084</url>
    <price>12474.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>181</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6084/4c707f1918-1_resize_1200x1200.jpg
    </picture>
    <name>PLP-6EALR1</name>
    <description>
    &lt;p&gt;Декоративная панель Mitsubishi Electric&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Вес нетто, кг">5</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="6085" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6085</url>
    <price>25278.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>181</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6085/3241d85359-1_resize_1200x1200.jpg
    </picture>
    <name>PLP-6EAJ</name>
    <description>
    &lt;p&gt;Декоративная панель Mitsubishi Electric&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Серия">MR.SLIM</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7758" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7758</url>
    <price>5280.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <name>MAC-100FT-E</name>
    <param name="Вес нетто, кг">2</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5754" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5754</url>
    <price>11319.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5754/30994ca9c6-1_resize_1200x1200.jpg
    </picture>
    <name>MAC-644BH-E</name>
    <param name="Вес нетто, кг">0.3</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="5763" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5763</url>
    <price>2013.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5763/7b84a3b927-1_resize_1200x1200.jpg
    </picture>
    <name>MSDD-50BR-E</name>
    <description>Разветвитель для мультисистемы</description>
    <param name="Вес нетто, кг">0.41</param>
    </offer>
    <offer id="5764" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5764</url>
    <price>16764.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5764/0c40c446b9-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SH97DP-E</name>
    <description>Дренажний насос</description>
    <param name="Вес нетто, кг">10.4</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5765" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5765</url>
    <price>1155.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5765/da821abb5b-1_resize_1200x1200.png
    </picture>
    <name>PAC-SG61DS-E</name>
    <description>Дренажный патрубок</description>
    <param name="Вес нетто, кг">0.2</param>
    </offer>
    <offer id="5766" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5766</url>
    <price>1419.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5766/55d9756930-1_resize_1200x1200.png
    </picture>
    <name>PAC-SA88HA-EP</name>
    <description>Розєм для зовнішніх ланцюгів</description>
    <param name="Вес нетто, кг">0.3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5768" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5768</url>
    <price>1221.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5768/940b5914a5-1_resize_1200x1200.png
    </picture>
    <name>MAC-1702RA-E</name>
    <param name="Вес нетто, кг">0.14</param>
    </offer>
    <offer id="5771" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5771</url>
    <price>1716.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5771/b572bd73b0-1_resize_1200x1200.jpg
    </picture>
    <name>MAC-A454JP-E</name>
    <description>
    Фильтр MAC-417 FT-E Anti Allergy Filter (1 pack = 10pcs) Подходит для кондиционеров MSZ-FD25VA, MSZ-FD35VA, MSZ-FD50VA
    </description>
    <param name="Вес нетто, кг">0.22</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5773" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5773</url>
    <price>1980.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5773/85c203fe68-1_resize_1200x1200.jpg
    </picture>
    <name>MAC-A456JP-E</name>
    <description>
    Фильтр MAC-417 FT-E Anti Allergy Filter (1 pack = 10pcs) Подходит для кондиционеров MSZ-FD25VA, MSZ-FD35VA, MSZ-FD50VA
    </description>
    <param name="Вес нетто, кг">0.29</param>
    </offer>
    <offer id="5774" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5774</url>
    <price>4257.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5774/75c452ef30-1_resize_1200x1200.jpg
    </picture>
    <name>MSDD-50TR-E</name>
    <description>Разветвитель для мультисистемы</description>
    <param name="Вес нетто, кг">1.42</param>
    </offer>
    <offer id="5777" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5777</url>
    <price>13068.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5777/14bce6a690-1_resize_1200x1200.jpg
    </picture>
    <name>MSDT-111R-E</name>
    <description>Разветвитель для мультисистемы</description>
    <param name="Вес нетто, кг">2</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5778" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5778</url>
    <price>4752.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5778/4fe1dad993-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SK52ST</name>
    <description>Диагностическая плата</description>
    <param name="Вес нетто, кг">0.06</param>
    </offer>
    <offer id="5779" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5779</url>
    <price>20889.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5779/1c20752023-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SC51KUA-J</name>
    <description>Блок питания</description>
    <param name="Вес нетто, кг">1.94</param>
    </offer>
    <offer id="5780" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5780</url>
    <price>3300.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5780/c8221c03a6-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SE41TS-E</name>
    <description>Выносной датчик комнатной температуры</description>
    <param name="Вес нетто, кг">0.38</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5781" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5781</url>
    <price>14949.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5781/f1bf2a1a44-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SH63AG-E</name>
    <description>Панель защиты от ветра</description>
    <param name="Вес нетто, кг">5.7</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5785" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5785</url>
    <price>3663.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5785/ab04af8adf-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-TH011HT-E</name>
    <description>Термістори</description>
    <param name="Вес нетто, кг">2</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5789" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5789</url>
    <price>9966.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5789/8fb4f30017-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-KE07DM-E</name>
    <description>Дренажный насос</description>
    <param name="Вес нетто, кг">3</param>
    </offer>
    <offer id="5790" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5790</url>
    <price>1716.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5790/fee9c774bb-1_resize_1200x1200.png
    </picture>
    <name>MAC-3010FT-E</name>
    <description>Антиаллергенная фильтрующая вставка</description>
    <param name="Вес нетто, кг">0.02</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5795" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5795</url>
    <price>2244.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5795/0db2a98449-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SE55RA-E</name>
    <description>Выносной датчик комнатной температуры</description>
    <param name="Вес нетто, кг">0.6</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5798" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5798</url>
    <price>18183.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5798/378c24308d-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SH95AG-E</name>
    <description>Панель защиты от ветра</description>
    <param name="Вес нетто, кг">6.3</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5799" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5799</url>
    <price>2013.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5799/90587beb11-1_resize_1200x1200.jpg
    </picture>
    <name>MSDD-50AR-E</name>
    <description>Разветвитель для мультисистемы</description>
    <param name="Вес нетто, кг">0.95</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5801" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5801</url>
    <price>3003.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5801/fc75865a4a-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SC36NA-E</name>
    <description>Блок питания</description>
    <param name="Вес нетто, кг">0.15</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5806" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5806</url>
    <price>1419.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5806/b6d1c34d5f-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SG73RJ-E</name>
    <description>Дренажный патрубок</description>
    <param name="Вес нетто, кг">0.2</param>
    </offer>
    <offer id="5808" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5808</url>
    <price>1947.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5808/eb5babad52-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SG76RJ-E</name>
    <description>Дренажный патрубок</description>
    <param name="Вес нетто, кг">0.27</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5819" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5819</url>
    <price>1221.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5819/c5d253266f-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SH29TC-E</name>
    <description>Панель защиты от ветра</description>
    <param name="Вес нетто, кг">0.04</param>
    <param name="Страна производитель">Япония</param>
    </offer>
    <offer id="5820" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5820</url>
    <price>1221.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5820/910224998f-1_resize_1200x1200.jpg
    </picture>
    <name>MAC-2370FT-E</name>
    <description>Антиаллергенная фильтрующая вставка</description>
    <param name="Вес нетто, кг">0.05</param>
    <param name="Страна производитель">Таиланд</param>
    </offer>
    <offer id="5824" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5824</url>
    <price>3102.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5824/c65f6e349c-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-TH011-E</name>
    <description>Термістори</description>
    <param name="Вес нетто, кг">0.02</param>
    </offer>
    <offer id="5825" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5825</url>
    <price>1848.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5825/19e570a1ec-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-TH011TK-E</name>
    <description>Термістори</description>
    <param name="Вес нетто, кг">0.01</param>
    <param name="Страна производитель">Великобритания</param>
    </offer>
    <offer id="5837" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5837</url>
    <price>3003.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5837/2fe37a3df1-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-SG38KF-E</name>
    <description>Масло улавливающие фильтр для PCA-RPххHA</description>
    <param name="Вес нетто, кг">0.2</param>
    </offer>
    <offer id="5838" available="false">
    <url>https://b2b.ktg.in.ua/catalog/5838</url>
    <price>1815.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5838/15a60cdc39-1_resize_1200x1200.jpg
    </picture>
    <name>PAC-493PI</name>
    <description>Комплект разветвителей для VRF-система</description>
    <param name="Вес нетто, кг">0.15</param>
    </offer>
    <offer id="5877" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5877</url>
    <price>95139.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>162</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5877/5e3f550f3d-1_resize_1200x1200.jpg
    </picture>
    <name>CMS-RMD-J</name>
    <description>Диагностический прибор</description>
    <param name="Вес нетто, кг">1</param>
    </offer>
    <offer id="7938" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7938</url>
    <price>25575.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7938/7f44bd537f-1_resize_1200x1200.jpg
    </picture>
    <name>SM2OE-042VHU</name>
    <description>
    &lt;p&gt;Мощность охлаждения 4,1кВт, Магистраль 2х6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м , Компрессор HIGHLY, расстояние между лапами 480мм&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">4.1</param>
    <param name="Производительность нагр., кВт">4.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">HIKARU MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1</param>
    <param name="Потребляемая мощность нагр., кВт">1</param>
    <param name="Макс потребляемая мощность кВт">2</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">2х6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">730×540×260</param>
    <param name="Размеры упаковки ДхВхГ, мм">860×590×400</param>
    <param name="Расстояние между лапами, мм">480</param>
    <param name="Вес нетто, кг">34</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7937" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7937</url>
    <price>30525.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7937/68c4f0b900-1_resize_1200x1200.jpg
    </picture>
    <name>SM2OE-052VHU</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,2кВт, Магистраль 2х6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м , Компрессор GMCC, расстояние между лапами 510мм&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.2</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">HIKARU MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.38</param>
    <param name="Потребляемая мощность нагр., кВт">1.43</param>
    <param name="Макс потребляемая мощность кВт">2.5</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">2х6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">810×580×280</param>
    <param name="Размеры упаковки ДхВхГ, мм">940×630×385</param>
    <param name="Расстояние между лапами, мм">510</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7939" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7939</url>
    <price>40755.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7939/cefe05cbe0-1_resize_1200x1200.jpg
    </picture>
    <name>SM3OE-072VHU</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,2кВт, Магистраль 3х6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 45м, максимальный перепад высот 15м , Компрессор GMCC, расстояние между лапами 542мм&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.2</param>
    <param name="Производительность нагр., кВт">7.92</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">HIKARU MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.87</param>
    <param name="Потребляемая мощность нагр., кВт">2.03</param>
    <param name="Макс потребляемая мощность кВт">4.025</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">3х6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">45</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">860×670×310</param>
    <param name="Размеры упаковки ДхВхГ, мм">990×730×450</param>
    <param name="Расстояние между лапами, мм">542</param>
    <param name="Вес нетто, кг">49</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7940" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7940</url>
    <price>64680.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7940/378e75eb56-1_resize_1200x1200.jpg
    </picture>
    <name>SM4OE-105VHU</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10кВт, Магистраль 4х6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 60м, максимальный перепад высот 15м , Компрессор GMCC, расстояние между лапами 580мм&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10</param>
    <param name="Производительность нагр., кВт">11</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">HIKARU MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.1</param>
    <param name="Потребляемая мощность нагр., кВт">2.8</param>
    <param name="Макс потребляемая мощность кВт">4</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">4х6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">60</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950×840×340</param>
    <param name="Размеры упаковки ДхВхГ, мм">1110×920×460</param>
    <param name="Расстояние между лапами, мм">580</param>
    <param name="Вес нетто, кг">73</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6206" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6206</url>
    <price>70455.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6206/efe20cee16-1_resize_1200x1200.jpg
    </picture>
    <name>SM5OE-123VU</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,3кВт, Магистраль 5х6,35(1/4) / 4х 9,52(3/8)+1х12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 75м, максимальный перепад высот 15м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.3</param>
    <param name="Производительность нагр., кВт">12.3</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">UMI MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.89</param>
    <param name="Потребляемая мощность нагр., кВт">3.37</param>
    <param name="Макс потребляемая мощность кВт">4.7</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">5х6,35(1/4) / 4х 9,52(3/8)+1х12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">75</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">946x810x410</param>
    <param name="Размеры упаковки ДхВхГ, мм">1090x865x500</param>
    <param name="Вес нетто, кг">76</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6207" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6207</url>
    <price>5577.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6207/d8a261d48c-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6207/8e79685166-2_resize_1200x1200.jpg
    </picture>
    <name>SMIE-020SAF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,05кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.05</param>
    <param name="Производительность нагр., кВт">2.34</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">UMI MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.044</param>
    <param name="Потребляемая мощность нагр., кВт">0.044</param>
    <param name="Макс потребляемая мощность кВт">0.044</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">25</param>
    <param name="Размеры ДхВхГ, мм">805x285x194</param>
    <param name="Размеры упаковки ДхВхГ, мм">870x365x270</param>
    <param name="Вес нетто, кг">7.3</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7933" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7933</url>
    <price>6171.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7933/c66fd69c03-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7933/a2f507c45a-2_resize_1200x1200.jpg
    </picture>
    <name>SMIE-020SHDC</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,1кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 15м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.1</param>
    <param name="Производительность нагр., кВт">2.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">HIKARU MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.043</param>
    <param name="Потребляемая мощность нагр., кВт">0.043</param>
    <param name="Макс потребляемая мощность кВт">0.043</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Размеры ДхВхГ, мм">745×270×212</param>
    <param name="Размеры упаковки ДхВхГ, мм">800×335×265</param>
    <param name="Вес нетто, кг">7.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6208" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6208</url>
    <price>5907.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6208/b588114040-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6208/9b49db2139-2_resize_1200x1200.jpg
    </picture>
    <name>SMIE-025SAF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,64кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.64</param>
    <param name="Производительность нагр., кВт">2.93</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">UMI MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.044</param>
    <param name="Потребляемая мощность нагр., кВт">0.044</param>
    <param name="Макс потребляемая мощность кВт">0.044</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Размеры ДхВхГ, мм">805x285x194</param>
    <param name="Размеры упаковки ДхВхГ, мм">870x365x270</param>
    <param name="Вес нетто, кг">7.6</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7934" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7934</url>
    <price>6402.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7934/de9a4575a4-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7934/1f3ebccce8-2_resize_1200x1200.jpg
    </picture>
    <name>SMIE-025SHDC</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,6кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 15м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.6</param>
    <param name="Производительность нагр., кВт">2.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">HIKARU MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.045</param>
    <param name="Потребляемая мощность нагр., кВт">0.045</param>
    <param name="Макс потребляемая мощность кВт">0.045</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Размеры ДхВхГ, мм">815×275×210</param>
    <param name="Размеры упаковки ДхВхГ, мм">870×335×265</param>
    <param name="Вес нетто, кг">8.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6209" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6209</url>
    <price>6897.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6209/d8eb1ceab8-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6209/99e4cb50bf-2_resize_1200x1200.jpg
    </picture>
    <name>SMIE-035SAF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,52кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.52</param>
    <param name="Производительность нагр., кВт">3.81</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">UMI MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.048</param>
    <param name="Потребляемая мощность нагр., кВт">0.048</param>
    <param name="Макс потребляемая мощность кВт">0.048</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Размеры ДхВхГ, мм">805x285x194</param>
    <param name="Размеры упаковки ДхВхГ, мм">870x365x270</param>
    <param name="Вес нетто, кг">7.6</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7935" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7935</url>
    <price>6567.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7935/6f4b5f7d13-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7935/6bfd96a1c1-2_resize_1200x1200.jpg
    </picture>
    <name>SMIE-035SHDC</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,5кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 15м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">HIKARU MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.045</param>
    <param name="Потребляемая мощность нагр., кВт">0.045</param>
    <param name="Макс потребляемая мощность кВт">0.045</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">28</param>
    <param name="Размеры ДхВхГ, мм">815×275×210</param>
    <param name="Размеры упаковки ДхВхГ, мм">870×335×265</param>
    <param name="Вес нетто, кг">8.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7936" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7936</url>
    <price>8547.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7936/d16fe91131-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7936/33ff152787-2_resize_1200x1200.jpg
    </picture>
    <name>SMIE-050SHDC</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 15м, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">HIKARU MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.07</param>
    <param name="Потребляемая мощность нагр., кВт">0.07</param>
    <param name="Макс потребляемая мощность кВт">0.07</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">33</param>
    <param name="Размеры ДхВхГ, мм">914×315×228</param>
    <param name="Размеры упаковки ДхВхГ, мм">1000×390×315</param>
    <param name="Вес нетто, кг">12</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6210" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6210</url>
    <price>8250.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6210/bcafe2771a-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6210/f448de2044-2_resize_1200x1200.jpg
    </picture>
    <name>SMIE-050SAF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,28кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.57</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">UMI MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.048</param>
    <param name="Потребляемая мощность нагр., кВт">0.048</param>
    <param name="Макс потребляемая мощность кВт">0.048</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Размеры ДхВхГ, мм">957x302x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1035x385x295</param>
    <param name="Вес нетто, кг">10</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6211" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6211</url>
    <price>10560.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>27</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6211/7a1353036e-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6211/301e2ceb53-2_resize_1200x1200.jpg
    </picture>
    <name>SMIE-060SAF</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.33</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">UMI MULTI</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.062</param>
    <param name="Потребляемая мощность нагр., кВт">0.062</param>
    <param name="Макс потребляемая мощность кВт">0.062</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">31</param>
    <param name="Размеры ДхВхГ, мм">1040x330x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1120x405x315</param>
    <param name="Вес нетто, кг">12.3</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="5678" available="true">
    <url>https://b2b.ktg.in.ua/catalog/5678</url>
    <price>825.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>380</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems5678/5791d09e19-1_resize_1200x1200.png
    </picture>
    <name>WI-FI module HHP</name>
    <description>
    &lt;p&gt;WiFi модуль для кондиционеров Sakata HEAT PUMP inverter SHHP&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">HEAT PUMP</param>
    <param name="Хладагент">R410A</param>
    <param name="Wi-Fi">Да</param>
    </offer>
    <offer id="6890" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6890</url>
    <price>11880.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6890/9ef209d497-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-050DCV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,28кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.57</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.13</param>
    <param name="Потребляемая мощность нагр., кВт">1.76</param>
    <param name="Расход воздуха, м3/ч">816</param>
    <param name="Статическое давление, Па">60</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">36</param>
    <param name="Размеры ДхВхГ, мм">920x635x210</param>
    <param name="Размеры упаковки ДхВхГ, мм">1135x655x290</param>
    <param name="Вес нетто, кг">24</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6884" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6884</url>
    <price>15510.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6884/760f628583-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-060DDV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.62</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.87</param>
    <param name="Потребляемая мощность нагр., кВт">2.3</param>
    <param name="Расход воздуха, м3/ч">1360</param>
    <param name="Статическое давление, Па">80</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">38</param>
    <param name="Размеры ДхВхГ, мм">1100x774x249</param>
    <param name="Размеры упаковки ДхВхГ, мм">1305x805x305</param>
    <param name="Вес нетто, кг">32.2</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6888" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6888</url>
    <price>15510.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6888/34c6522837-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-060DCV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.62</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.65</param>
    <param name="Потребляемая мощность нагр., кВт">2.5</param>
    <param name="Расход воздуха, м3/ч">1260</param>
    <param name="Статическое давление, Па">80</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">38</param>
    <param name="Размеры ДхВхГ, мм">920x635x270</param>
    <param name="Размеры упаковки ДхВхГ, мм">1150x655x350</param>
    <param name="Вес нетто, кг">26.5</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6882" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6882</url>
    <price>23199.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6882/2f38c5d878-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-100DDY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.43</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.65</param>
    <param name="Потребляемая мощность нагр., кВт">3.3</param>
    <param name="Расход воздуха, м3/ч">1804</param>
    <param name="Статическое давление, Па">100</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">40</param>
    <param name="Размеры ДхВхГ, мм">1100x774x249</param>
    <param name="Размеры упаковки ДхВхГ, мм">1305x805x305</param>
    <param name="Вес нетто, кг">32.2</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6891" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6891</url>
    <price>24684.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6891/5c09020e4c-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-100DCY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.72</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.82</param>
    <param name="Потребляемая мощность нагр., кВт">3.44</param>
    <param name="Расход воздуха, м3/ч">1848</param>
    <param name="Статическое давление, Па">80</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">37</param>
    <param name="Размеры ДхВхГ, мм">1140x775x270</param>
    <param name="Размеры упаковки ДхВхГ, мм">1355x795x350</param>
    <param name="Вес нетто, кг">36</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6885" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6885</url>
    <price>24354.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6885/fd15e2e575-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-140DDY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,07кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.07</param>
    <param name="Производительность нагр., кВт">16.12</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.35</param>
    <param name="Потребляемая мощность нагр., кВт">4.82</param>
    <param name="Расход воздуха, м3/ч">2100</param>
    <param name="Статическое давление, Па">160</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">40</param>
    <param name="Размеры ДхВхГ, мм">1200x874x300</param>
    <param name="Размеры упаковки ДхВхГ, мм">1405x915x355</param>
    <param name="Вес нетто, кг">46</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6892" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6892</url>
    <price>29469.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6892/39a45c846d-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-140DCY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,07кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.07</param>
    <param name="Производительность нагр., кВт">16.12</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.19</param>
    <param name="Потребляемая мощность нагр., кВт">4.4</param>
    <param name="Расход воздуха, м3/ч">2282</param>
    <param name="Статическое давление, Па">100</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">40</param>
    <param name="Размеры ДхВхГ, мм">1200x865x300</param>
    <param name="Размеры упаковки ДхВхГ, мм">1405x920x373</param>
    <param name="Вес нетто, кг">44.5</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6886" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6886</url>
    <price>36234.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6886/cbf6673f7e-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-140DCYh</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,36кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.36</param>
    <param name="Производительность нагр., кВт">15.24</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.13</param>
    <param name="Потребляемая мощность нагр., кВт">4.22</param>
    <param name="Расход воздуха, м3/ч">2809</param>
    <param name="Статическое давление, Па">200</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">46</param>
    <param name="Размеры ДхВхГ, мм">1200x625x380</param>
    <param name="Размеры упаковки ДхВхГ, мм">1485x675x450</param>
    <param name="Вес нетто, кг">46</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6881" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6881</url>
    <price>28248.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6881/df6617137d-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-200DDY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16,12кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16.12</param>
    <param name="Производительность нагр., кВт">17.58</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.36</param>
    <param name="Потребляемая мощность нагр., кВт">5.54</param>
    <param name="Расход воздуха, м3/ч">2400</param>
    <param name="Статическое давление, Па">160</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">40</param>
    <param name="Размеры ДхВхГ, мм">1200x874x300</param>
    <param name="Размеры упаковки ДхВхГ, мм">1405x915x355</param>
    <param name="Вес нетто, кг">46</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6893" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6893</url>
    <price>28248.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <name>SIB-200DCY</name>
    <description>MHC-24HRN1-Q</description>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">47</param>
    </offer>
    <offer id="6887" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6887</url>
    <price>33462.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>22</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6887/9dc6235daa-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-200DCYh</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16,41кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16.41</param>
    <param name="Производительность нагр., кВт">18.17</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.5</param>
    <param name="Потребляемая мощность нагр., кВт">5.3</param>
    <param name="Расход воздуха, м3/ч">3150</param>
    <param name="Статическое давление, Па">200</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">48</param>
    <param name="Размеры ДхВхГ, мм">1200x625x380</param>
    <param name="Размеры упаковки ДхВхГ, мм">1485Ч675Ч450</param>
    <param name="Вес нетто, кг">46</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6895" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6895</url>
    <price>14883.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>23</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6895/fb5676bafa-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-035BCV</name>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">16.3</param>
    </offer>
    <offer id="6894" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6894</url>
    <price>16830.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>23</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6894/5b1462bdff-1_resize_1200x1200.jpg
    </picture>
    <name>SIB-050BCV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,28кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.57</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.99</param>
    <param name="Потребляемая мощность нагр., кВт">1.74</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">35</param>
    <param name="Размеры ДхВхГ, мм">570x570x260</param>
    <param name="Размеры упаковки ДхВхГ, мм">655x655x290</param>
    <param name="Вес нетто, кг">16.3</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6896" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6896</url>
    <price>24585.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>23</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6896/5bc468b34f-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6896/ee326823b0-2_resize_1200x1200.jpg
    </picture>
    <name>SIB-060BCV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.62</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.6</param>
    <param name="Потребляемая мощность нагр., кВт">2.4</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">41</param>
    <param name="Размеры ДхВхГ, мм">840x840x205</param>
    <param name="Размеры упаковки ДхВхГ, мм">900x900x217</param>
    <param name="Вес нетто, кг">22.1</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6897" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6897</url>
    <price>28314.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>23</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6897/df5c0b1bfe-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6897/a9771dcecb-2_resize_1200x1200.jpg
    </picture>
    <name>SIB-100BCY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.72</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.98</param>
    <param name="Потребляемая мощность нагр., кВт">3.6</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">43</param>
    <param name="Размеры ДхВхГ, мм">840x840x245</param>
    <param name="Размеры упаковки ДхВхГ, мм">900x900x265</param>
    <param name="Вес нетто, кг">25</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6898" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6898</url>
    <price>32934.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>23</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6898/b8c03015a6-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6898/f5d7015fd7-2_resize_1200x1200.jpg
    </picture>
    <name>SIB-140BCY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,07кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.07</param>
    <param name="Производительность нагр., кВт">15.24</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.19</param>
    <param name="Потребляемая мощность нагр., кВт">4.76</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">44</param>
    <param name="Размеры ДхВхГ, мм">840x840x245</param>
    <param name="Размеры упаковки ДхВхГ, мм">900x900x265</param>
    <param name="Вес нетто, кг">27</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6899" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6899</url>
    <price>38313.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>23</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6899/e869b6a091-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6899/3e2344af60-2_resize_1200x1200.jpg
    </picture>
    <name>SIB-200BCY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16,12кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16.12</param>
    <param name="Производительность нагр., кВт">17.87</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.27</param>
    <param name="Потребляемая мощность нагр., кВт">5.84</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">44</param>
    <param name="Размеры ДхВхГ, мм">840x840x287</param>
    <param name="Размеры упаковки ДхВхГ, мм">900x900x292</param>
    <param name="Вес нетто, кг">29</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6900" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6900</url>
    <price>11880.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>24</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6900/da05c57f17-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6900/d34d7835c9-2_resize_1200x1200.jpg
    </picture>
    <name>SIB-050TCV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,28кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.57</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.11</param>
    <param name="Потребляемая мощность нагр., кВт">1.73</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">43</param>
    <param name="Размеры ДхВхГ, мм">1068x675x235</param>
    <param name="Размеры упаковки ДхВхГ, мм">1145x755x313</param>
    <param name="Вес нетто, кг">24</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6901" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6901</url>
    <price>19470.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>24</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6901/a05abc7a03-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6901/80ebf1fc14-2_resize_1200x1200.jpg
    </picture>
    <name>SIB-060TCV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.62</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.63</param>
    <param name="Потребляемая мощность нагр., кВт">2.45</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">44</param>
    <param name="Размеры ДхВхГ, мм">1068x675x235</param>
    <param name="Размеры упаковки ДхВхГ, мм">1145x755x313</param>
    <param name="Вес нетто, кг">24.6</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6902" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6902</url>
    <price>28149.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>24</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6902/98e11a50f7-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6902/b18541aa06-2_resize_1200x1200.jpg
    </picture>
    <name>SIB-100TCY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.72</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.98</param>
    <param name="Потребляемая мощность нагр., кВт">3.7</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">44</param>
    <param name="Размеры ДхВхГ, мм">1285x675x235</param>
    <param name="Размеры упаковки ДхВхГ, мм">1360x755x313</param>
    <param name="Вес нетто, кг">26</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6903" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6903</url>
    <price>30459.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>24</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6903/589898fd99-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6903/10a5fda1fb-2_resize_1200x1200.jpg
    </picture>
    <name>SIB-140TCY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,07кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.07</param>
    <param name="Производительность нагр., кВт">15.24</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.06</param>
    <param name="Потребляемая мощность нагр., кВт">5.06</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">44</param>
    <param name="Размеры ДхВхГ, мм">1285x675x235</param>
    <param name="Размеры упаковки ДхВхГ, мм">1360x755x313</param>
    <param name="Вес нетто, кг">31</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6904" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6904</url>
    <price>35673.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>24</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6904/7383c07704-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6904/d3a8fdd851-2_resize_1200x1200.jpg
    </picture>
    <name>SIB-200TCY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16,12кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16.12</param>
    <param name="Производительность нагр., кВт">17.87</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.4</param>
    <param name="Потребляемая мощность нагр., кВт">5.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">46</param>
    <param name="Размеры ДхВхГ, мм">1650x675x235</param>
    <param name="Размеры упаковки ДхВхГ, мм">1725x755x313</param>
    <param name="Вес нетто, кг">39</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6875" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6875</url>
    <price>17457.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>21</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6875/21ce642860-1_resize_1200x1200.jpg
    </picture>
    <name>SOB-035VC</name>
    <description>MOU-18HN1-Q</description>
    <param name="Хладагент">R410A</param>
    <param name="Вес нетто, кг">30.5</param>
    </offer>
    <offer id="6876" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6876</url>
    <price>20460.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>21</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6876/bc84e5f811-1_resize_1200x1200.jpg
    </picture>
    <name>SOB-050VC</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,28кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 15м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.57</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.99</param>
    <param name="Потребляемая мощность нагр., кВт">1.74</param>
    <param name="Макс потребляемая мощность кВт">2.95</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">770x555x300</param>
    <param name="Размеры упаковки ДхВхГ, мм">900x615x348</param>
    <param name="Вес нетто, кг">36.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6877" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6877</url>
    <price>25245.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>21</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6877/43a70a8b3e-1_resize_1200x1200.jpg
    </picture>
    <name>SOB-060VC</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 15м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.62</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.6</param>
    <param name="Потребляемая мощность нагр., кВт">2.4</param>
    <param name="Макс потребляемая мощность кВт">3.45</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">845x702x363</param>
    <param name="Размеры упаковки ДхВхГ, мм">965x765x395</param>
    <param name="Вес нетто, кг">52.7</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6878" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6878</url>
    <price>36531.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>21</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6878/b85fa7a0bc-1_resize_1200x1200.jpg
    </picture>
    <name>SOB-100YC</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м , Компрессор EMERSON, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.72</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.98</param>
    <param name="Потребляемая мощность нагр., кВт">3.6</param>
    <param name="Макс потребляемая мощность кВт">4.25</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">946x810x410</param>
    <param name="Размеры упаковки ДхВхГ, мм">1090x875x500</param>
    <param name="Вес нетто, кг">77.1</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6879" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6879</url>
    <price>41811.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>21</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6879/62c0d3b6d0-1_resize_1200x1200.jpg
    </picture>
    <name>SOB-140YC</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,07кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м , Компрессор PANASONIC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.07</param>
    <param name="Производительность нагр., кВт">15.24</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.19</param>
    <param name="Потребляемая мощность нагр., кВт">4.76</param>
    <param name="Макс потребляемая мощность кВт">6.3</param>
    <param name="Компрессор">PANASONIC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">900x1170x350</param>
    <param name="Размеры упаковки ДхВхГ, мм">1032x1307x443</param>
    <param name="Вес нетто, кг">93.2</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6880" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6880</url>
    <price>46497.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>21</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6880/cd6de9a458-1_resize_1200x1200.jpg
    </picture>
    <name>SOB-200YC</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16,12кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м , Компрессор PANASONIC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16.12</param>
    <param name="Производительность нагр., кВт">17.87</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.27</param>
    <param name="Потребляемая мощность нагр., кВт">5.84</param>
    <param name="Макс потребляемая мощность кВт">7.5</param>
    <param name="Компрессор">PANASONIC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">900x1170x350</param>
    <param name="Размеры упаковки ДхВхГ, мм">1032x1307x443</param>
    <param name="Вес нетто, кг">97</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4534" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4534</url>
    <price>37290.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>15</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4534/a9fa268373-1_resize_1200x1200.jpg
    </picture>
    <name>SIBE-140DAY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,07кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.07</param>
    <param name="Производительность нагр., кВт">16.12</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.115</param>
    <param name="Потребляемая мощность нагр., кВт">4.355</param>
    <param name="Расход воздуха, м3/ч">2200</param>
    <param name="Статическое давление, Па">100</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">44</param>
    <param name="Размеры ДхВхГ, мм">1200x865x300</param>
    <param name="Размеры упаковки ДхВхГ, мм">1405x920x373</param>
    <param name="Вес нетто, кг">43.2</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4538" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4538</url>
    <price>16005.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>15</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4538/4ec52c248a-1_resize_1200x1200.jpg
    </picture>
    <name>SIBI-050DAV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,28кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.57</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.64</param>
    <param name="Потребляемая мощность нагр., кВт">1.5</param>
    <param name="Расход воздуха, м3/ч">1006</param>
    <param name="Статическое давление, Па">100</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">40</param>
    <param name="Размеры ДхВхГ, мм">880x674x210</param>
    <param name="Размеры упаковки ДхВхГ, мм">1070x725x270</param>
    <param name="Вес нетто, кг">25.6</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4539" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4539</url>
    <price>25575.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>15</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4539/f547a1c8f7-1_resize_1200x1200.jpg
    </picture>
    <name>SIBI-060DAV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 25м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.62</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.19</param>
    <param name="Потребляемая мощность нагр., кВт">2.05</param>
    <param name="Расход воздуха, м3/ч">1248</param>
    <param name="Статическое давление, Па">160</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">25</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">40</param>
    <param name="Размеры ДхВхГ, мм">1100x774x249</param>
    <param name="Размеры упаковки ДхВхГ, мм">1305x805x305</param>
    <param name="Вес нетто, кг">31.5</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4540" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4540</url>
    <price>35970.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>15</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4540/c13fa39867-1_resize_1200x1200.jpg
    </picture>
    <name>SIBI-100DAY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.14</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.95</param>
    <param name="Потребляемая мощность нагр., кВт">3</param>
    <param name="Расход воздуха, м3/ч">1400</param>
    <param name="Статическое давление, Па">160</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">40</param>
    <param name="Размеры ДхВхГ, мм">1360x774x249</param>
    <param name="Размеры упаковки ДхВхГ, мм">1570x805x305</param>
    <param name="Вес нетто, кг">40.5</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4541" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4541</url>
    <price>44715.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>15</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4541/8d164b447b-1_resize_1200x1200.jpg
    </picture>
    <name>SIBI-140DAY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14</param>
    <param name="Производительность нагр., кВт">16.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.15</param>
    <param name="Потребляемая мощность нагр., кВт">4.28</param>
    <param name="Расход воздуха, м3/ч">2400</param>
    <param name="Статическое давление, Па">160</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">48</param>
    <param name="Размеры ДхВхГ, мм">1200x874x300</param>
    <param name="Размеры упаковки ДхВхГ, мм">1405x915x355</param>
    <param name="Вес нетто, кг">47.6</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4553" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4553</url>
    <price>21120.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>16</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4553/34b500fe65-1_resize_1200x1200.jpg
    </picture>
    <name>SIBI-035BAV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,52кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.52</param>
    <param name="Производительность нагр., кВт">4.4</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.85</param>
    <param name="Потребляемая мощность нагр., кВт">1.1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">33</param>
    <param name="Размеры ДхВхГ, мм">570x570x260</param>
    <param name="Размеры упаковки ДхВхГ, мм">662x662x317</param>
    <param name="Вес нетто, кг">16.2</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4554" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4554</url>
    <price>18480.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>16</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4554/2fbb5079e6-1_resize_1200x1200.jpg
    </picture>
    <name>SIBI-050BAV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,28кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.57</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.64</param>
    <param name="Потребляемая мощность нагр., кВт">1.5</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">37</param>
    <param name="Размеры ДхВхГ, мм">570x570x260</param>
    <param name="Размеры упаковки ДхВхГ, мм">662x662x317</param>
    <param name="Вес нетто, кг">16.2</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4555" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4555</url>
    <price>28050.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>16</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4555/fd1e9c1a53-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4555/1c21f649f0-2_resize_1200x1200.jpg
    </picture>
    <name>SIBI-060BAV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.62</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.19</param>
    <param name="Потребляемая мощность нагр., кВт">2.05</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">40</param>
    <param name="Размеры ДхВхГ, мм">840x840x205</param>
    <param name="Размеры упаковки ДхВхГ, мм">900x900x225</param>
    <param name="Вес нетто, кг">23</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4556" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4556</url>
    <price>38445.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>16</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4556/8087da435e-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4556/0a9db83dd3-2_resize_1200x1200.jpg
    </picture>
    <name>SIBI-100BAY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.14</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.95</param>
    <param name="Потребляемая мощность нагр., кВт">3</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">46</param>
    <param name="Размеры ДхВхГ, мм">840x840x245</param>
    <param name="Размеры упаковки ДхВхГ, мм">900x900x265</param>
    <param name="Вес нетто, кг">27.5</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4557" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4557</url>
    <price>51645.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>16</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4557/a213cd9bf7-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4557/e8af9293b3-2_resize_1200x1200.jpg
    </picture>
    <name>SIBI-140BAY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14</param>
    <param name="Производительность нагр., кВт">16.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.13</param>
    <param name="Потребляемая мощность нагр., кВт">5.05</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">49</param>
    <param name="Размеры ДхВхГ, мм">840x840x287</param>
    <param name="Размеры упаковки ДхВхГ, мм">900x900x292</param>
    <param name="Вес нетто, кг">29</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4558" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4558</url>
    <price>55110.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>16</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4558/436c294ea9-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4558/5e05151e60-2_resize_1200x1200.jpg
    </picture>
    <name>SIBI-200BAY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 15,8кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">15.8</param>
    <param name="Производительность нагр., кВт">18.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.95</param>
    <param name="Потребляемая мощность нагр., кВт">6.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">49</param>
    <param name="Размеры ДхВхГ, мм">840x840x287</param>
    <param name="Размеры упаковки ДхВхГ, мм">900x900x292</param>
    <param name="Вес нетто, кг">29.7</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4568" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4568</url>
    <price>18480.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>17</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4568/09c48d4e67-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4568/4c101c0398-2_resize_1200x1200.jpg
    </picture>
    <name>SIBI-050TAV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,28кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.57</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.64</param>
    <param name="Потребляемая мощность нагр., кВт">1.5</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">37</param>
    <param name="Размеры ДхВхГ, мм">1068x675x235</param>
    <param name="Размеры упаковки ДхВхГ, мм">1145x755x313</param>
    <param name="Вес нетто, кг">26.6</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4569" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4569</url>
    <price>25575.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>17</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4569/44ec6eb546-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4569/684d3edf48-2_resize_1200x1200.jpg
    </picture>
    <name>SIBI-060TAV</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.62</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.19</param>
    <param name="Потребляемая мощность нагр., кВт">2.05</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">41</param>
    <param name="Размеры ДхВхГ, мм">1068x675x235</param>
    <param name="Размеры упаковки ДхВхГ, мм">1145x755x313</param>
    <param name="Вес нетто, кг">26.8</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4570" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4570</url>
    <price>38445.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>17</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4570/2059d37792-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4570/5d54f5ce49-2_resize_1200x1200.jpg
    </picture>
    <name>SIBI-100TAY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.14</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.95</param>
    <param name="Потребляемая мощность нагр., кВт">3</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">1650x675x235</param>
    <param name="Размеры упаковки ДхВхГ, мм">1725x755x313</param>
    <param name="Вес нетто, кг">39</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4571" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4571</url>
    <price>44715.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>17</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4571/ba01ea35fa-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4571/e1cf4e32e3-2_resize_1200x1200.jpg
    </picture>
    <name>SIBI-140TAY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,2кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.2</param>
    <param name="Производительность нагр., кВт">16.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.5</param>
    <param name="Потребляемая мощность нагр., кВт">5.05</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">46</param>
    <param name="Размеры ДхВхГ, мм">1650x675x235</param>
    <param name="Размеры упаковки ДхВхГ, мм">1725x755x313</param>
    <param name="Вес нетто, кг">41.2</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4572" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4572</url>
    <price>52800.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>17</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4572/9767c5b937-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4572/c307ec0307-2_resize_1200x1200.jpg
    </picture>
    <name>SIBI-200TAY</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16</param>
    <param name="Производительность нагр., кВт">18.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.06</param>
    <param name="Потребляемая мощность нагр., кВт">6.04</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Уровень шума, дБ(А)">46</param>
    <param name="Размеры ДхВхГ, мм">1650x675x235</param>
    <param name="Размеры упаковки ДхВхГ, мм">1725x755x313</param>
    <param name="Вес нетто, кг">41.4</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4578" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4578</url>
    <price>21450.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>18</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4578/dae689dd6a-1_resize_1200x1200.jpg
    </picture>
    <name>SOBE-035VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,25кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 10м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.25</param>
    <param name="Производительность нагр., кВт">4.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.96</param>
    <param name="Потребляемая мощность нагр., кВт">0.995</param>
    <param name="Макс потребляемая мощность кВт">2</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">800x554x333</param>
    <param name="Размеры упаковки ДхВхГ, мм">920x615x390</param>
    <param name="Вес нетто, кг">34.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4576" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4576</url>
    <price>54450.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>18</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4576/77ad4b7ee5-1_resize_1200x1200.jpg
    </picture>
    <name>SOBE-140YA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,07кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.07</param>
    <param name="Производительность нагр., кВт">16.12</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.115</param>
    <param name="Потребляемая мощность нагр., кВт">4.355</param>
    <param name="Макс потребляемая мощность кВт">6.1</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">952x1333x410</param>
    <param name="Размеры упаковки ДхВхГ, мм">1095x1470x500</param>
    <param name="Вес нетто, кг">108</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4579" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4579</url>
    <price>23595.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>18</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4579/a384bdc93e-1_resize_1200x1200.jpg
    </picture>
    <name>SOBI-035VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,52кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 10м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.52</param>
    <param name="Производительность нагр., кВт">4.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.95</param>
    <param name="Потребляемая мощность нагр., кВт">1.1</param>
    <param name="Макс потребляемая мощность кВт">1.8</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Размеры ДхВхГ, мм">800x554x333</param>
    <param name="Размеры упаковки ДхВхГ, мм">920x615x390</param>
    <param name="Вес нетто, кг">34.7</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4580" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4580</url>
    <price>36300.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>18</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4580/51e2f7f02d-1_resize_1200x1200.jpg
    </picture>
    <name>SOBI-050VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,28кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.57</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.64</param>
    <param name="Потребляемая мощность нагр., кВт">1.5</param>
    <param name="Макс потребляемая мощность кВт">2.2</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Размеры ДхВхГ, мм">800x554x333</param>
    <param name="Размеры упаковки ДхВхГ, мм">920x615x390</param>
    <param name="Вес нетто, кг">35.6</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4581" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4581</url>
    <price>41745.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>18</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4581/3d11fd48ee-1_resize_1200x1200.jpg
    </picture>
    <name>SOBI-060VA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.62</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.19</param>
    <param name="Потребляемая мощность нагр., кВт">2.05</param>
    <param name="Макс потребляемая мощность кВт">2.95</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Размеры ДхВхГ, мм">845x702x363</param>
    <param name="Размеры упаковки ДхВхГ, мм">965x755x395</param>
    <param name="Вес нетто, кг">66.8</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4582" available="false">
    <url>https://b2b.ktg.in.ua/catalog/4582</url>
    <price>56265.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>18</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4582/520d1e477d-1_resize_1200x1200.jpg
    </picture>
    <name>SOBI-100YA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.14</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.95</param>
    <param name="Потребляемая мощность нагр., кВт">3</param>
    <param name="Макс потребляемая мощность кВт">5.6</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Размеры ДхВхГ, мм">946x810x410</param>
    <param name="Размеры упаковки ДхВхГ, мм">1090x875x500</param>
    <param name="Вес нетто, кг">81.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4583" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4583</url>
    <price>59895.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>18</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4583/74d8ca6ff0-1_resize_1200x1200.jpg
    </picture>
    <name>SOBI-140YA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,2кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.2</param>
    <param name="Производительность нагр., кВт">16.1</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.5</param>
    <param name="Потребляемая мощность нагр., кВт">5.05</param>
    <param name="Макс потребляемая мощность кВт">6.2</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Размеры ДхВхГ, мм">952x1333x410</param>
    <param name="Размеры упаковки ДхВхГ, мм">1095x1470x500</param>
    <param name="Вес нетто, кг">106.7</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="4584" available="true">
    <url>https://b2b.ktg.in.ua/catalog/4584</url>
    <price>65340.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>18</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems4584/75d140cec7-1_resize_1200x1200.jpg
    </picture>
    <name>SOBI-200YA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 65м, максимальный перепад высот 30м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16</param>
    <param name="Производительность нагр., кВт">18.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.06</param>
    <param name="Потребляемая мощность нагр., кВт">6.04</param>
    <param name="Макс потребляемая мощность кВт">7.5</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">65</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-23</param>
    <param name="Размеры ДхВхГ, мм">952x1333x410</param>
    <param name="Размеры упаковки ДхВхГ, мм">1095x1470x500</param>
    <param name="Вес нетто, кг">111.3</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6212" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6212</url>
    <price>0.33</price>
    <currencyId>UAH</currencyId>
    <categoryId>19</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6212/0dbd48f1c1-1_resize_1200x1200.jpg
    </picture>
    <name>SPfC-01 panel</name>
    <description>
    &lt;p&gt;Декоративная панель для кассетных блоков Sakata&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    </offer>
    <offer id="6213" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6213</url>
    <price>0.33</price>
    <currencyId>UAH</currencyId>
    <categoryId>19</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6213/413ffd6cae-1_resize_1200x1200.jpg
    </picture>
    <name>SPfC-02 panel</name>
    <description>
    &lt;p&gt;Декоративная панель для кассетных блоков Sakata&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    </offer>
    <offer id="6177" available="false">
    <url>https://b2b.ktg.in.ua/catalog/6177</url>
    <price>31218.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>37</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6177/fad918a793-1_resize_1200x1200.jpg
    </picture>
    <name>SPV-0350</name>
    <description>
    &lt;p&gt;Расход воздуха 350м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 82% , статическое давление 120Па , уровень шума 31дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Макс потребляемая мощность кВт">0.15</param>
    <param name="Расход воздуха, м3/ч">350</param>
    <param name="Статическое давление, Па">120</param>
    <param name="Эффективность рекуператора, %">82</param>
    <param name="Уровень шума, дБ(А)">31</param>
    <param name="Размеры ДхВхГ, мм">744х804х270</param>
    <param name="Вес нетто, кг">31</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6178" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6178</url>
    <price>36564.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>37</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6178/40c81146e6-1_resize_1200x1200.jpg
    </picture>
    <name>SPV-0500</name>
    <description>
    &lt;p&gt;Расход воздуха 500м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 81% , статическое давление 140Па , уровень шума 29дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Макс потребляемая мощность кВт">0.2</param>
    <param name="Расход воздуха, м3/ч">500</param>
    <param name="Статическое давление, Па">140</param>
    <param name="Эффективность рекуператора, %">81</param>
    <param name="Уровень шума, дБ(А)">29</param>
    <param name="Размеры ДхВхГ, мм">824х904х270</param>
    <param name="Вес нетто, кг">36</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6179" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6179</url>
    <price>52305.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>37</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6179/e347bff4f2-1_resize_1200x1200.jpg
    </picture>
    <name>SPV-0800</name>
    <description>
    &lt;p&gt;Расход воздуха 800м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 74% , статическое давление 100Па , уровень шума 34дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Макс потребляемая мощность кВт">0.355</param>
    <param name="Расход воздуха, м3/ч">800</param>
    <param name="Статическое давление, Па">100</param>
    <param name="Эффективность рекуператора, %">74</param>
    <param name="Уровень шума, дБ(А)">34</param>
    <param name="Размеры ДхВхГ, мм">1116х884х388</param>
    <param name="Вес нетто, кг">60</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6180" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6180</url>
    <price>55770.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>37</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6180/f029c57e60-1_resize_1200x1200.jpg
    </picture>
    <name>SPV-1000</name>
    <description>
    &lt;p&gt;Расход воздуха 1000м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 80% , статическое давление 175Па , уровень шума 36дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Макс потребляемая мощность кВт">0.69</param>
    <param name="Расход воздуха, м3/ч">1000</param>
    <param name="Статическое давление, Па">175</param>
    <param name="Эффективность рекуператора, %">80</param>
    <param name="Уровень шума, дБ(А)">36</param>
    <param name="Размеры ДхВхГ, мм">1129х1216х388</param>
    <param name="Вес нетто, кг">79</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6176" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6176</url>
    <price>64668.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>37</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6176/17d0b9fb90-1_resize_1200x1200.jpg
    </picture>
    <name>SPV-1300</name>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Макс потребляемая мощность кВт">0.71</param>
    <param name="Расход воздуха, м3/ч">1300</param>
    <param name="Статическое давление, Па">90</param>
    <param name="Эффективность рекуператора, %">76</param>
    <param name="Уровень шума, дБ(А)">37</param>
    <param name="Размеры ДхВхГ, мм">1116x1134x388</param>
    <param name="Вес нетто, кг">79</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6175" available="true">
    <url>https://b2b.ktg.in.ua/catalog/6175</url>
    <price>81015.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>37</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6175/215be439e2-1_resize_1200x1200.jpg
    </picture>
    <name>SPV-1500</name>
    <description>
    &lt;p&gt;Расход воздуха 1500м3/ч, питание 220-240В / 1Ф / 50Гц, эффективность рекуператора 74% , статическое давление 163Па , уровень шума 46дБ(А)&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Приточно-вытяжные установки</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Макс потребляемая мощность кВт">0.785</param>
    <param name="Расход воздуха, м3/ч">1500</param>
    <param name="Статическое давление, Па">163</param>
    <param name="Эффективность рекуператора, %">74</param>
    <param name="Уровень шума, дБ(А)">46</param>
    <param name="Размеры ДхВхГ, мм">1300х1200х520</param>
    <param name="Вес нетто, кг">110</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7467" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7467</url>
    <price>8712.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>88</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7467/e62d3de973-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7467/76ab0afacd-2_resize_1200x1200.jpg
    </picture>
    <name>LSWH-100AB1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,9кВт, Магистраль 6,35(1/4) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 10м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.9</param>
    <param name="Производительность нагр., кВт">7.6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">INNOVATION</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.48</param>
    <param name="Потребляемая мощность нагр., кВт">2.267</param>
    <param name="Макс потребляемая мощность кВт">3.17</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">37</param>
    <param name="Размеры ДхВхГ, мм">1082x330x233</param>
    <param name="Размеры упаковки ДхВхГ, мм">1155x395x315</param>
    <param name="Вес нетто, кг">16</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7949" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7949</url>
    <price>3927.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>388</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7949/2cd643471b-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7949/a14c6b5ff5-2_resize_1200x1200.jpg
    </picture>
    <name>LSWH-20FC1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,05кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 7м, максимальный перепад высот 5м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.05</param>
    <param name="Производительность нагр., кВт">2.11</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">SIMPLE</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.04</param>
    <param name="Потребляемая мощность нагр., кВт">0.04</param>
    <param name="Макс потребляемая мощность кВт">0.04</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">7</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">34</param>
    <param name="Размеры ДхВхГ, мм">720×270×201</param>
    <param name="Размеры упаковки ДхВхГ, мм">800×330×265</param>
    <param name="Вес нетто, кг">7</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7950" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7950</url>
    <price>5907.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>388</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7950/9ba8321f5e-1_resize_1200x1200.jpg
    </picture>
    <name>LSAH-20FC1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,05кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 7м, максимальный перепад высот 5м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.05</param>
    <param name="Производительность нагр., кВт">2.11</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">SIMPLE</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.64</param>
    <param name="Потребляемая мощность нагр., кВт">0.584</param>
    <param name="Макс потребляемая мощность кВт">0.83</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">7</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">635x458x240</param>
    <param name="Размеры упаковки ДхВхГ, мм">755x515x325</param>
    <param name="Вес нетто, кг">22</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7951" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7951</url>
    <price>4323.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>388</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7951/bc31b6c37b-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7951/9ceda1879c-2_resize_1200x1200.jpg
    </picture>
    <name>LSWH-25FC1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,63кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 9м, максимальный перепад высот 5м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.63</param>
    <param name="Производительность нагр., кВт">2.69</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">SIMPLE</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.045</param>
    <param name="Потребляемая мощность нагр., кВт">0.045</param>
    <param name="Макс потребляемая мощность кВт">0.045</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">9</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">34</param>
    <param name="Размеры ДхВхГ, мм">720×270×201</param>
    <param name="Размеры упаковки ДхВхГ, мм">800×330×265</param>
    <param name="Вес нетто, кг">7</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7952" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7952</url>
    <price>6468.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>388</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7952/8f4fb498de-1_resize_1200x1200.jpg
    </picture>
    <name>LSAH-25FC1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 2,63кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 9м, максимальный перепад высот 5м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">2.63</param>
    <param name="Производительность нагр., кВт">2.69</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">SIMPLE</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.82</param>
    <param name="Потребляемая мощность нагр., кВт">0.743</param>
    <param name="Макс потребляемая мощность кВт">1.062</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">9</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">635x458x240</param>
    <param name="Размеры упаковки ДхВхГ, мм">755x515x325</param>
    <param name="Вес нетто, кг">22</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7953" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7953</url>
    <price>5544.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>388</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7953/bfa22c614c-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7953/2b9117b467-2_resize_1200x1200.jpg
    </picture>
    <name>LSWH-35FC1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,51кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 12м, максимальный перепад высот 7м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.51</param>
    <param name="Производительность нагр., кВт">3.57</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">SIMPLE</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.045</param>
    <param name="Потребляемая мощность нагр., кВт">0.045</param>
    <param name="Макс потребляемая мощность кВт">0.045</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">12</param>
    <param name="Макс. перепад высоты, м">7</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">36</param>
    <param name="Размеры ДхВхГ, мм">790×270×199</param>
    <param name="Размеры упаковки ДхВхГ, мм">860×335×265</param>
    <param name="Вес нетто, кг">8</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7954" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7954</url>
    <price>8316.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>388</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7954/09c648070b-1_resize_1200x1200.jpg
    </picture>
    <name>LSAH-35FC1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 3,51кВт, Магистраль 6,35(1/4) / 9,52(3/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 12м, максимальный перепад высот 7м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">3.51</param>
    <param name="Производительность нагр., кВт">3.57</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">SIMPLE</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.09</param>
    <param name="Потребляемая мощность нагр., кВт">0.986</param>
    <param name="Макс потребляемая мощность кВт">1.421</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">12</param>
    <param name="Макс. перепад высоты, м">7</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">660x530x240</param>
    <param name="Размеры упаковки ДхВхГ, мм">775x581x339</param>
    <param name="Вес нетто, кг">25</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7956" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7956</url>
    <price>8976.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>388</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7956/1d640ead62-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7956/808e2598ce-2_resize_1200x1200.jpg
    </picture>
    <name>LSWH-50FC1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,275кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 12м, максимальный перепад высот 7м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.334</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">SIMPLE</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.065</param>
    <param name="Потребляемая мощность нагр., кВт">0.065</param>
    <param name="Макс потребляемая мощность кВт">0.065</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">12</param>
    <param name="Макс. перепад высоты, м">7</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">38</param>
    <param name="Размеры ДхВхГ, мм">900×291×218</param>
    <param name="Размеры упаковки ДхВхГ, мм">970×345×290</param>
    <param name="Вес нетто, кг">10.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7955" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7955</url>
    <price>13497.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>388</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7955/a232113810-1_resize_1200x1200.jpg
    </picture>
    <name>LSAH-50FC1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,275кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 12м, максимальный перепад высот 7м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.334</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">SIMPLE</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.64</param>
    <param name="Потребляемая мощность нагр., кВт">1.476</param>
    <param name="Макс потребляемая мощность кВт">2.128</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">12</param>
    <param name="Макс. перепад высоты, м">7</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">780x542x256</param>
    <param name="Размеры упаковки ДхВхГ, мм">900x600x340</param>
    <param name="Вес нетто, кг">33</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7957" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7957</url>
    <price>11319.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>388</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7957/40a75599be-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7957/3145b54269-2_resize_1200x1200.jpg
    </picture>
    <name>LSWH-70FC1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 6,35(1/4) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 15м, максимальный перепад высот 8м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.09</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Настенный</param>
    <param name="Серия">SIMPLE</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.065</param>
    <param name="Потребляемая мощность нагр., кВт">0.065</param>
    <param name="Макс потребляемая мощность кВт">0.065</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">8</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">39</param>
    <param name="Размеры ДхВхГ, мм">900×291×218</param>
    <param name="Размеры упаковки ДхВхГ, мм">970×345×290</param>
    <param name="Вес нетто, кг">10.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7958" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7958</url>
    <price>16995.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>388</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7958/970c368eae-1_resize_1200x1200.jpg
    </picture>
    <name>LSAH-70FC1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 6,35(1/4) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 15м, максимальный перепад высот 8м , Компрессор HIGHLY, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.09</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">SIMPLE</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.19</param>
    <param name="Потребляемая мощность нагр., кВт">1.959</param>
    <param name="Макс потребляемая мощность кВт">2.847</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">8</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">820x635x310</param>
    <param name="Размеры упаковки ДхВхГ, мм">972x680x400</param>
    <param name="Вес нетто, кг">43</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="816" available="false">
    <url>https://b2b.ktg.in.ua/catalog/816</url>
    <price>14091.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>78</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems816/0607e526c6-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-18DVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.7</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.72</param>
    <param name="Потребляемая мощность нагр., кВт">1.67</param>
    <param name="Макс потребляемая мощность кВт">2.46</param>
    <param name="Расход воздуха, м3/ч">750</param>
    <param name="Статическое давление, Па">30</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">35</param>
    <param name="Размеры ДхВхГ, мм">900x190x447</param>
    <param name="Размеры упаковки ДхВхГ, мм">1070x236x580</param>
    <param name="Вес нетто, кг">19</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="817" available="true">
    <url>https://b2b.ktg.in.ua/catalog/817</url>
    <price>16962.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>78</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems817/12af4a416f-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-24DVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,05кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.05</param>
    <param name="Производительность нагр., кВт">8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.34</param>
    <param name="Потребляемая мощность нагр., кВт">2.22</param>
    <param name="Макс потребляемая мощность кВт">3.25</param>
    <param name="Расход воздуха, м3/ч">1250</param>
    <param name="Статическое давление, Па">80</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">38</param>
    <param name="Размеры ДхВхГ, мм">900x270 x720</param>
    <param name="Размеры упаковки ДхВхГ, мм">1170x340x870</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="818" available="false">
    <url>https://b2b.ktg.in.ua/catalog/818</url>
    <price>21219.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>78</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems818/b559c460b6-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-36DYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.25</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.5</param>
    <param name="Потребляемая мощность нагр., кВт">3.1</param>
    <param name="Макс потребляемая мощность кВт">4.32</param>
    <param name="Расход воздуха, м3/ч">1800</param>
    <param name="Статическое давление, Па">80</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">37</param>
    <param name="Размеры ДхВхГ, мм">1386x350x800</param>
    <param name="Размеры упаковки ДхВхГ, мм">1550x410x940</param>
    <param name="Вес нетто, кг">54</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="819" available="true">
    <url>https://b2b.ktg.in.ua/catalog/819</url>
    <price>27258.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>78</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems819/ccfd597a47-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-48DYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14</param>
    <param name="Производительность нагр., кВт">15</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.65</param>
    <param name="Потребляемая мощность нагр., кВт">4.53</param>
    <param name="Макс потребляемая мощность кВт">6.48</param>
    <param name="Расход воздуха, м3/ч">2000</param>
    <param name="Статическое давление, Па">120</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">1386x350x800</param>
    <param name="Размеры упаковки ДхВхГ, мм">1550x410x940</param>
    <param name="Вес нетто, кг">54</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="820" available="false">
    <url>https://b2b.ktg.in.ua/catalog/820</url>
    <price>32670.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>78</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems820/cb90e607f1-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-60DYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16</param>
    <param name="Производительность нагр., кВт">17.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.69</param>
    <param name="Потребляемая мощность нагр., кВт">5.81</param>
    <param name="Макс потребляемая мощность кВт">8.23</param>
    <param name="Расход воздуха, м3/ч">2000</param>
    <param name="Статическое давление, Па">120</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">1386x350x800</param>
    <param name="Размеры упаковки ДхВхГ, мм">1550x410x940</param>
    <param name="Вес нетто, кг">54</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="823" available="true">
    <url>https://b2b.ktg.in.ua/catalog/823</url>
    <price>26499.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>79</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems823/c5172ae9ea-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-36CYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.25</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.5</param>
    <param name="Потребляемая мощность нагр., кВт">3.1</param>
    <param name="Макс потребляемая мощность кВт">4.37</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">48</param>
    <param name="Размеры ДхВхГ, мм">840x248x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996x370x956</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="824" available="true">
    <url>https://b2b.ktg.in.ua/catalog/824</url>
    <price>32373.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>79</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems824/184f3a9955-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-48CYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14</param>
    <param name="Производительность нагр., кВт">14.8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.65</param>
    <param name="Потребляемая мощность нагр., кВт">4.85</param>
    <param name="Макс потребляемая мощность кВт">6.2</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">840x298x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996x420x956</param>
    <param name="Вес нетто, кг">33</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="825" available="true">
    <url>https://b2b.ktg.in.ua/catalog/825</url>
    <price>34650.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>79</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems825/017f2a2eac-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-60CYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16</param>
    <param name="Производительность нагр., кВт">17.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.69</param>
    <param name="Потребляемая мощность нагр., кВт">5.81</param>
    <param name="Макс потребляемая мощность кВт">8.23</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">840x298x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996x420x956</param>
    <param name="Вес нетто, кг">33</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="826" available="true">
    <url>https://b2b.ktg.in.ua/catalog/826</url>
    <price>14091.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>80</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems826/4d2172b1cf-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-18FVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.72</param>
    <param name="Потребляемая мощность нагр., кВт">1.77</param>
    <param name="Макс потребляемая мощность кВт">2.4</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">36</param>
    <param name="Размеры ДхВхГ, мм">990x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1100x820x350</param>
    <param name="Вес нетто, кг">28</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="827" available="true">
    <url>https://b2b.ktg.in.ua/catalog/827</url>
    <price>19437.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>80</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems827/41f2605a8f-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-24FVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,03кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.03</param>
    <param name="Производительность нагр., кВт">7.6</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.34</param>
    <param name="Потребляемая мощность нагр., кВт">2.37</param>
    <param name="Макс потребляемая мощность кВт">3.26</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">46</param>
    <param name="Размеры ДхВхГ, мм">990x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1100x820x350</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="828" available="false">
    <url>https://b2b.ktg.in.ua/catalog/828</url>
    <price>26499.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>80</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems828/b0b1e54adf-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-36FYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.25</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.5</param>
    <param name="Потребляемая мощность нагр., кВт">3.2</param>
    <param name="Макс потребляемая мощность кВт">4.27</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">52</param>
    <param name="Размеры ДхВхГ, мм">1285x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1400x820x350</param>
    <param name="Вес нетто, кг">40</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="829" available="false">
    <url>https://b2b.ktg.in.ua/catalog/829</url>
    <price>32373.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>80</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems829/da81779862-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-48FYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14</param>
    <param name="Производительность нагр., кВт">16</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.65</param>
    <param name="Потребляемая мощность нагр., кВт">4.53</param>
    <param name="Макс потребляемая мощность кВт">6.48</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">50</param>
    <param name="Размеры ДхВхГ, мм">1580x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1690x820x350</param>
    <param name="Вес нетто, кг">46</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="830" available="false">
    <url>https://b2b.ktg.in.ua/catalog/830</url>
    <price>35145.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>80</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems830/92ac202adc-1_resize_1200x1200.jpg
    </picture>
    <name>LIC-60FYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16</param>
    <param name="Производительность нагр., кВт">18</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.69</param>
    <param name="Потребляемая мощность нагр., кВт">5.81</param>
    <param name="Макс потребляемая мощность кВт">8.23</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">50</param>
    <param name="Размеры ДхВхГ, мм">1580x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1690x820x350</param>
    <param name="Вес нетто, кг">46</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="831" available="true">
    <url>https://b2b.ktg.in.ua/catalog/831</url>
    <price>16599.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>81</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems831/184cca6f66-1_resize_1200x1200.jpg
    </picture>
    <name>LOC-18UVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 20м, максимальный перепад высот 15м , Компрессор LANDA, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.72</param>
    <param name="Потребляемая мощность нагр., кВт">1.77</param>
    <param name="Макс потребляемая мощность кВт">2.46</param>
    <param name="Компрессор">LANDA</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">810x280x585</param>
    <param name="Размеры упаковки ДхВхГ, мм">940x420x640</param>
    <param name="Вес нетто, кг">42</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="832" available="true">
    <url>https://b2b.ktg.in.ua/catalog/832</url>
    <price>21483.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>81</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems832/a34cedd430-1_resize_1200x1200.jpg
    </picture>
    <name>LOC-24UVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,05кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м , Компрессор HIGHLY, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.05</param>
    <param name="Производительность нагр., кВт">7.6</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.34</param>
    <param name="Потребляемая мощность нагр., кВт">2.37</param>
    <param name="Макс потребляемая мощность кВт">3.25</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">860x665x310</param>
    <param name="Размеры упаковки ДхВхГ, мм">990x730x450</param>
    <param name="Вес нетто, кг">51</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="833" available="true">
    <url>https://b2b.ktg.in.ua/catalog/833</url>
    <price>29931.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>81</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems833/8ef1a968f3-1_resize_1200x1200.jpg
    </picture>
    <name>LOC-36UYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,55кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 380-420В / 3Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м , Компрессор HIGHLY, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.55</param>
    <param name="Производительность нагр., кВт">11.25</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.5</param>
    <param name="Потребляемая мощность нагр., кВт">3.2</param>
    <param name="Макс потребляемая мощность кВт">4.32</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">885x795x366</param>
    <param name="Размеры упаковки ДхВхГ, мм">1050x890x500</param>
    <param name="Вес нетто, кг">67</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="834" available="true">
    <url>https://b2b.ktg.in.ua/catalog/834</url>
    <price>34287.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>81</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems834/1eb84ca689-1_resize_1200x1200.jpg
    </picture>
    <name>LOC-48UYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 380-420В / 3Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м , Компрессор HIGHLY, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14</param>
    <param name="Производительность нагр., кВт">16</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.65</param>
    <param name="Потребляемая мощность нагр., кВт">4.53</param>
    <param name="Макс потребляемая мощность кВт">6.48</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950x1050x340</param>
    <param name="Размеры упаковки ДхВхГ, мм">1110x1200x460</param>
    <param name="Вес нетто, кг">96</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="835" available="true">
    <url>https://b2b.ktg.in.ua/catalog/835</url>
    <price>39105.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>81</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems835/8d1228bdcb-1_resize_1200x1200.jpg
    </picture>
    <name>LOC-60UYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 16кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 380-420В / 3Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м , Компрессор HIGHLY, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">16</param>
    <param name="Производительность нагр., кВт">18</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.69</param>
    <param name="Потребляемая мощность нагр., кВт">5.81</param>
    <param name="Макс потребляемая мощность кВт">8.23</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950x1386x340</param>
    <param name="Размеры упаковки ДхВхГ, мм">1110x1530x460</param>
    <param name="Вес нетто, кг">106</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="796" available="false">
    <url>https://b2b.ktg.in.ua/catalog/796</url>
    <price>15048.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>73</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems796/78b1b9a53e-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-18DVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,2кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.2</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.73</param>
    <param name="Потребляемая мощность нагр., кВт">1.76</param>
    <param name="Макс потребляемая мощность кВт">2.07</param>
    <param name="Расход воздуха, м3/ч">900</param>
    <param name="Статическое давление, Па">30</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">33</param>
    <param name="Размеры ДхВхГ, мм">1170x190x447</param>
    <param name="Размеры упаковки ДхВхГ, мм">1340x236x580</param>
    <param name="Вес нетто, кг">24</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="797" available="true">
    <url>https://b2b.ktg.in.ua/catalog/797</url>
    <price>18447.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>73</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems797/e55f62c8be-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-24DVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,2кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.2</param>
    <param name="Производительность нагр., кВт">8.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.24</param>
    <param name="Потребляемая мощность нагр., кВт">2.35</param>
    <param name="Макс потребляемая мощность кВт">2.8</param>
    <param name="Расход воздуха, м3/ч">1100</param>
    <param name="Статическое давление, Па">80</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">34</param>
    <param name="Размеры ДхВхГ, мм">900x270 x720</param>
    <param name="Размеры упаковки ДхВхГ, мм">1170x340x870</param>
    <param name="Вес нетто, кг">32</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="798" available="true">
    <url>https://b2b.ktg.in.ua/catalog/798</url>
    <price>26598.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>73</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems798/16772803b0-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-36DVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 9,8кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.8</param>
    <param name="Производительность нагр., кВт">11</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.5</param>
    <param name="Потребляемая мощность нагр., кВт">3.1</param>
    <param name="Макс потребляемая мощность кВт">5.5</param>
    <param name="Расход воздуха, м3/ч">1800</param>
    <param name="Статическое давление, Па">80</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">38</param>
    <param name="Размеры ДхВхГ, мм">1300x350x800</param>
    <param name="Размеры упаковки ДхВхГ, мм">1550x410x940</param>
    <param name="Вес нетто, кг">54</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="799" available="true">
    <url>https://b2b.ktg.in.ua/catalog/799</url>
    <price>31680.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>73</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems799/81969cacf4-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-48DYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,6кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.6</param>
    <param name="Производительность нагр., кВт">15</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.92</param>
    <param name="Потребляемая мощность нагр., кВт">4.15</param>
    <param name="Макс потребляемая мощность кВт">6.2</param>
    <param name="Расход воздуха, м3/ч">2000</param>
    <param name="Статическое давление, Па">120</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">47</param>
    <param name="Размеры ДхВхГ, мм">1386x350x800</param>
    <param name="Размеры упаковки ДхВхГ, мм">1550x410x940</param>
    <param name="Вес нетто, кг">50</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="800" available="false">
    <url>https://b2b.ktg.in.ua/catalog/800</url>
    <price>34023.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>73</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems800/929e19001e-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-60DYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 17кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">17</param>
    <param name="Производительность нагр., кВт">20.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.3</param>
    <param name="Потребляемая мощность нагр., кВт">5.65</param>
    <param name="Макс потребляемая мощность кВт">7.5</param>
    <param name="Расход воздуха, м3/ч">2000</param>
    <param name="Статическое давление, Па">120</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">47</param>
    <param name="Размеры ДхВхГ, мм">1386x350x800</param>
    <param name="Размеры упаковки ДхВхГ, мм">1550x410x940</param>
    <param name="Вес нетто, кг">50</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7876" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7876</url>
    <price>16170.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>73</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7876/ff8afd8b51-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-18DVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,3кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.3</param>
    <param name="Производительность нагр., кВт">5.8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.61</param>
    <param name="Потребляемая мощность нагр., кВт">1.54</param>
    <param name="Макс потребляемая мощность кВт">2</param>
    <param name="Расход воздуха, м3/ч">900</param>
    <param name="Статическое давление, Па">50</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">33</param>
    <param name="Размеры ДхВхГ, мм">1180×190×447</param>
    <param name="Размеры упаковки ДхВхГ, мм">1350×285×565</param>
    <param name="Вес нетто, кг">22.5</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7878" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7878</url>
    <price>18381.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>73</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7878/eab10d0180-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-24DVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,2кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.2</param>
    <param name="Производительность нагр., кВт">7.9</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.23</param>
    <param name="Потребляемая мощность нагр., кВт">2.13</param>
    <param name="Макс потребляемая мощность кВт">4.1</param>
    <param name="Расход воздуха, м3/ч">1000</param>
    <param name="Статическое давление, Па">40</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">32</param>
    <param name="Размеры ДхВхГ, мм">1180×190×447</param>
    <param name="Размеры упаковки ДхВхГ, мм">1350×285×565</param>
    <param name="Вес нетто, кг">22.5</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7879" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7879</url>
    <price>28875.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>73</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7879/5865bc4ccd-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-36DVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,5кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.5</param>
    <param name="Производительность нагр., кВт">11.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.75</param>
    <param name="Потребляемая мощность нагр., кВт">3.38</param>
    <param name="Макс потребляемая мощность кВт">5.1</param>
    <param name="Расход воздуха, м3/ч">1800</param>
    <param name="Статическое давление, Па">150</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">38</param>
    <param name="Размеры ДхВхГ, мм">1140х268х720</param>
    <param name="Размеры упаковки ДхВхГ, мм">1330×360×870</param>
    <param name="Вес нетто, кг">37.5</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7880" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7880</url>
    <price>32637.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>73</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7880/8230d93d61-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-48DYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,4кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.4</param>
    <param name="Производительность нагр., кВт">17.3</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.78</param>
    <param name="Потребляемая мощность нагр., кВт">4.67</param>
    <param name="Макс потребляемая мощность кВт">7.2</param>
    <param name="Расход воздуха, м3/ч">2400</param>
    <param name="Статическое давление, Па">150</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">1300×350×800</param>
    <param name="Размеры упаковки ДхВхГ, мм">1550×410×940</param>
    <param name="Вес нетто, кг">51</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7883" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7883</url>
    <price>37521.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>73</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7883/fa9ddff9d7-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-60DYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 17,5кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">17.5</param>
    <param name="Производительность нагр., кВт">18.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Канальный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.6</param>
    <param name="Потребляемая мощность нагр., кВт">6.1</param>
    <param name="Макс потребляемая мощность кВт">7.8</param>
    <param name="Расход воздуха, м3/ч">2400</param>
    <param name="Статическое давление, Па">150</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">43</param>
    <param name="Размеры ДхВхГ, мм">1300×350×800</param>
    <param name="Размеры упаковки ДхВхГ, мм">1550×410×940</param>
    <param name="Вес нетто, кг">51</param>
    <param name="Тип управления">проводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="801" available="false">
    <url>https://b2b.ktg.in.ua/catalog/801</url>
    <price>17094.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>74</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems801/bcb9fe0fe9-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-18CVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,2кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.2</param>
    <param name="Производительность нагр., кВт">6.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.68</param>
    <param name="Потребляемая мощность нагр., кВт">1.82</param>
    <param name="Макс потребляемая мощность кВт">2.06</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">41</param>
    <param name="Размеры ДхВхГ, мм">650x270x570</param>
    <param name="Размеры упаковки ДхВхГ, мм">770x310x750</param>
    <param name="Вес нетто, кг">21</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="802" available="false">
    <url>https://b2b.ktg.in.ua/catalog/802</url>
    <price>21978.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>74</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems802/c772e37e08-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-24CVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,2кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.2</param>
    <param name="Производительность нагр., кВт">8.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.24</param>
    <param name="Потребляемая мощность нагр., кВт">2.35</param>
    <param name="Макс потребляемая мощность кВт">2.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">29</param>
    <param name="Размеры ДхВхГ, мм">840x248x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996x370x956</param>
    <param name="Вес нетто, кг">28</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="803" available="false">
    <url>https://b2b.ktg.in.ua/catalog/803</url>
    <price>27621.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>74</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems803/1e40a6978a-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-36CVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 9,8кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.8</param>
    <param name="Производительность нагр., кВт">11.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.45</param>
    <param name="Потребляемая мощность нагр., кВт">3.1</param>
    <param name="Макс потребляемая мощность кВт">5.5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">45</param>
    <param name="Размеры ДхВхГ, мм">840x248x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996x370x956</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="804" available="false">
    <url>https://b2b.ktg.in.ua/catalog/804</url>
    <price>30657.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>74</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems804/04d0d0b72a-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-48CYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,6кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.6</param>
    <param name="Производительность нагр., кВт">15</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.72</param>
    <param name="Потребляемая мощность нагр., кВт">3.95</param>
    <param name="Макс потребляемая мощность кВт">5.92</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">44</param>
    <param name="Размеры ДхВхГ, мм">840x298x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996x420x956</param>
    <param name="Вес нетто, кг">29</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="805" available="false">
    <url>https://b2b.ktg.in.ua/catalog/805</url>
    <price>31515.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>74</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems805/d76753e2e7-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-60CYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 17кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">17</param>
    <param name="Производительность нагр., кВт">20</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.1</param>
    <param name="Потребляемая мощность нагр., кВт">5.45</param>
    <param name="Макс потребляемая мощность кВт">6.3</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">44</param>
    <param name="Размеры ДхВхГ, мм">840x298x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996x420x956</param>
    <param name="Вес нетто, кг">29</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7885" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7885</url>
    <price>18810.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>74</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7885/ee2f52bfce-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-18CVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,2кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.2</param>
    <param name="Производительность нагр., кВт">5.9</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.55</param>
    <param name="Потребляемая мощность нагр., кВт">1.59</param>
    <param name="Макс потребляемая мощность кВт">2.12</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">34</param>
    <param name="Размеры ДхВхГ, мм">570x215x570</param>
    <param name="Размеры упаковки ДхВхГ, мм">730x292x668</param>
    <param name="Вес нетто, кг">15.5</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7887" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7887</url>
    <price>25146.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>74</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7887/f88517d594-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-24CVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,3кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.3</param>
    <param name="Производительность нагр., кВт">8.3</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.1</param>
    <param name="Потребляемая мощность нагр., кВт">2.17</param>
    <param name="Макс потребляемая мощность кВт">4.1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">37</param>
    <param name="Размеры ДхВхГ, мм">840x248x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996×370×956</param>
    <param name="Вес нетто, кг">25</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7889" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7889</url>
    <price>33990.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>74</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7889/a3374de94d-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-36CVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,5кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.5</param>
    <param name="Производительность нагр., кВт">11.3</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.62</param>
    <param name="Потребляемая мощность нагр., кВт">3.23</param>
    <param name="Макс потребляемая мощность кВт">5.1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">42</param>
    <param name="Размеры ДхВхГ, мм">840x248x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996×370×956</param>
    <param name="Вес нетто, кг">27</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7891" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7891</url>
    <price>42867.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>74</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7891/f78dca6699-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-48CYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,4кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.4</param>
    <param name="Производительность нагр., кВт">17</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.67</param>
    <param name="Потребляемая мощность нагр., кВт">4.64</param>
    <param name="Макс потребляемая мощность кВт">7.1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">44</param>
    <param name="Размеры ДхВхГ, мм">840x298x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996x420x956</param>
    <param name="Вес нетто, кг">32</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7895" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7895</url>
    <price>45111.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>74</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7895/3bf42861f8-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-60CYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 17,2кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">17.2</param>
    <param name="Производительность нагр., кВт">20</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Кассетный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.6</param>
    <param name="Потребляемая мощность нагр., кВт">6.65</param>
    <param name="Макс потребляемая мощность кВт">7.8</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">44</param>
    <param name="Размеры ДхВхГ, мм">840x298x840</param>
    <param name="Размеры упаковки ДхВхГ, мм">996x420x956</param>
    <param name="Вес нетто, кг">32</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="806" available="false">
    <url>https://b2b.ktg.in.ua/catalog/806</url>
    <price>15048.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>75</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems806/a62184e0e1-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-18FVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,2кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.2</param>
    <param name="Производительность нагр., кВт">6.2</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.68</param>
    <param name="Потребляемая мощность нагр., кВт">1.72</param>
    <param name="Макс потребляемая мощность кВт">1.99</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">35</param>
    <param name="Размеры ДхВхГ, мм">990x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1100x820x350</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="807" available="false">
    <url>https://b2b.ktg.in.ua/catalog/807</url>
    <price>19140.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>75</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems807/bbb4cc296d-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-24FVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,2кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.2</param>
    <param name="Производительность нагр., кВт">8.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.39</param>
    <param name="Потребляемая мощность нагр., кВт">2.35</param>
    <param name="Макс потребляемая мощность кВт">2.8</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">45</param>
    <param name="Размеры ДхВхГ, мм">990x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1100x820x350</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="808" available="false">
    <url>https://b2b.ktg.in.ua/catalog/808</url>
    <price>22539.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>75</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems808/cf9e0ac79f-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-36FVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 9,7кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.7</param>
    <param name="Производительность нагр., кВт">11.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.5</param>
    <param name="Потребляемая мощность нагр., кВт">3.26</param>
    <param name="Макс потребляемая мощность кВт">5.5</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">52</param>
    <param name="Размеры ДхВхГ, мм">1285x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1400x820x350</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="809" available="false">
    <url>https://b2b.ktg.in.ua/catalog/809</url>
    <price>31680.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>75</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems809/cd79f5ca31-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-48FYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,6кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.6</param>
    <param name="Производительность нагр., кВт">15.3</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.92</param>
    <param name="Потребляемая мощность нагр., кВт">4.2</param>
    <param name="Макс потребляемая мощность кВт">5.9</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">51</param>
    <param name="Размеры ДхВхГ, мм">1580x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1690x820x350</param>
    <param name="Вес нетто, кг">47</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="810" available="false">
    <url>https://b2b.ktg.in.ua/catalog/810</url>
    <price>34023.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>75</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems810/221323bad4-1_resize_1200x1200.jpg
    </picture>
    <name>LICE-60FYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 17кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">17</param>
    <param name="Производительность нагр., кВт">20.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.3</param>
    <param name="Потребляемая мощность нагр., кВт">5.65</param>
    <param name="Макс потребляемая мощность кВт">6.3</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">51</param>
    <param name="Размеры ДхВхГ, мм">1580x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1690x820x350</param>
    <param name="Вес нетто, кг">47</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7877" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7877</url>
    <price>16170.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>75</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7877/83852f0545-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-18FVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,28кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.28</param>
    <param name="Производительность нагр., кВт">5.6</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.63</param>
    <param name="Потребляемая мощность нагр., кВт">1.42</param>
    <param name="Макс потребляемая мощность кВт">2</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">33</param>
    <param name="Размеры ДхВхГ, мм">990x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1100x820x350</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7881" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7881</url>
    <price>22506.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>75</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7881/8f9fd332db-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-24FVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 6,9кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">6.9</param>
    <param name="Производительность нагр., кВт">7.8</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.15</param>
    <param name="Потребляемая мощность нагр., кВт">2.35</param>
    <param name="Макс потребляемая мощность кВт">4.1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">45</param>
    <param name="Размеры ДхВхГ, мм">990x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1100x820x350</param>
    <param name="Вес нетто, кг">30</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7882" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7882</url>
    <price>31515.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>75</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7882/aa0a070211-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-36FVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10</param>
    <param name="Производительность нагр., кВт">11.3</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.57</param>
    <param name="Потребляемая мощность нагр., кВт">3.42</param>
    <param name="Макс потребляемая мощность кВт">5.1</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">51</param>
    <param name="Размеры ДхВхГ, мм">1285×680×230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1400×820×350</param>
    <param name="Вес нетто, кг">37</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7884" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7884</url>
    <price>42867.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>75</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7884/4aeae70166-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-48FYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,3кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.3</param>
    <param name="Производительность нагр., кВт">16.7</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.71</param>
    <param name="Потребляемая мощность нагр., кВт">4.58</param>
    <param name="Макс потребляемая мощность кВт">7</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">48</param>
    <param name="Размеры ДхВхГ, мм">1580x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1690x820x350</param>
    <param name="Вес нетто, кг">48</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7886" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7886</url>
    <price>45276.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>75</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7886/01cc42b4f0-1_resize_1200x1200.jpg
    </picture>
    <name>LICI-60FYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 17кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">17</param>
    <param name="Производительность нагр., кВт">18</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Напольно-потолочный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.6</param>
    <param name="Потребляемая мощность нагр., кВт">6.1</param>
    <param name="Макс потребляемая мощность кВт">7.8</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">48</param>
    <param name="Размеры ДхВхГ, мм">1580x680x230</param>
    <param name="Размеры упаковки ДхВхГ, мм">1690x820x350</param>
    <param name="Вес нетто, кг">48</param>
    <param name="Тип управления">беспроводной пульт</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="811" available="false">
    <url>https://b2b.ktg.in.ua/catalog/811</url>
    <price>23562.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>76</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems811/89541b6e20-1_resize_1200x1200.jpg
    </picture>
    <name>LOCE-18UVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,2кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.2</param>
    <param name="Производительность нагр., кВт">6</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.73</param>
    <param name="Потребляемая мощность нагр., кВт">1.76</param>
    <param name="Макс потребляемая мощность кВт">2.07</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">810x584x281</param>
    <param name="Размеры упаковки ДхВхГ, мм">940x640x420</param>
    <param name="Вес нетто, кг">36</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="812" available="true">
    <url>https://b2b.ktg.in.ua/catalog/812</url>
    <price>29799.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>76</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems812/e76dc5643b-1_resize_1200x1200.jpg
    </picture>
    <name>LOCE-24UVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,2кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.2</param>
    <param name="Производительность нагр., кВт">8.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.24</param>
    <param name="Потребляемая мощность нагр., кВт">2.35</param>
    <param name="Макс потребляемая мощность кВт">2.8</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">860x670x310</param>
    <param name="Размеры упаковки ДхВхГ, мм">990x730x450</param>
    <param name="Вес нетто, кг">51</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="813" available="true">
    <url>https://b2b.ktg.in.ua/catalog/813</url>
    <price>38379.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>76</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems813/36241281f3-1_resize_1200x1200.jpg
    </picture>
    <name>LOCE-36UVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 9,8кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 20м , Компрессор HITACHI, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">9.8</param>
    <param name="Производительность нагр., кВт">11</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.5</param>
    <param name="Потребляемая мощность нагр., кВт">3.1</param>
    <param name="Макс потребляемая мощность кВт">5.5</param>
    <param name="Компрессор">HITACHI</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">20</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950x840x340</param>
    <param name="Размеры упаковки ДхВхГ, мм">1110x980x460</param>
    <param name="Вес нетто, кг">70</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="814" available="true">
    <url>https://b2b.ktg.in.ua/catalog/814</url>
    <price>47025.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>76</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems814/73673785fa-1_resize_1200x1200.jpg
    </picture>
    <name>LOCE-48UYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 12,6кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 380-420В / 3Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м , Компрессор MITSUBISHI ELECTRIC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">12.6</param>
    <param name="Производительность нагр., кВт">15</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.92</param>
    <param name="Потребляемая мощность нагр., кВт">4.15</param>
    <param name="Макс потребляемая мощность кВт">6.2</param>
    <param name="Компрессор">MITSUBISHI ELECTRIC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950x1386x340</param>
    <param name="Размеры упаковки ДхВхГ, мм">1110x1527x460</param>
    <param name="Вес нетто, кг">101</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="815" available="false">
    <url>https://b2b.ktg.in.ua/catalog/815</url>
    <price>49764.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>76</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems815/5703b07579-1_resize_1200x1200.jpg
    </picture>
    <name>LOCE-60UYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 17кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 380-420В / 3Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м , Компрессор MITSUBISHI ELECTRIC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">17</param>
    <param name="Производительность нагр., кВт">20.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">5.3</param>
    <param name="Потребляемая мощность нагр., кВт">5.65</param>
    <param name="Макс потребляемая мощность кВт">7.5</param>
    <param name="Компрессор">MITSUBISHI ELECTRIC</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 19,05(3/4)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950x1386x340</param>
    <param name="Размеры упаковки ДхВхГ, мм">1110x1527x460</param>
    <param name="Вес нетто, кг">108</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7888" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7888</url>
    <price>24750.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>76</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7888/54d0cf1192-1_resize_1200x1200.jpg
    </picture>
    <name>LOCI-18UVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 5,3кВт, Магистраль 6,35(1/4) / 12,7(1/2), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 30м, максимальный перепад высот 15м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">5.3</param>
    <param name="Производительность нагр., кВт">5.9</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.35</param>
    <param name="Потребляемая мощность нагр., кВт">1.51</param>
    <param name="Макс потребляемая мощность кВт">1.95</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">30</param>
    <param name="Макс. перепад высоты, м">15</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">810×580×280</param>
    <param name="Размеры упаковки ДхВхГ, мм">940×640×420</param>
    <param name="Вес нетто, кг">36</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7890" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7890</url>
    <price>31284.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>76</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7890/3de6e71a3e-1_resize_1200x1200.jpg
    </picture>
    <name>LOCI-24UVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,2кВт, Магистраль 9,52(3/8) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.2</param>
    <param name="Производительность нагр., кВт">8.3</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.15</param>
    <param name="Потребляемая мощность нагр., кВт">2.21</param>
    <param name="Макс потребляемая мощность кВт">3.95</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">860×670×310</param>
    <param name="Размеры упаковки ДхВхГ, мм">990×730×450</param>
    <param name="Вес нетто, кг">49</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7892" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7892</url>
    <price>40260.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>76</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7892/36c02dd20a-1_resize_1200x1200.jpg
    </picture>
    <name>LOCI-36UVA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 10,5кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">10.5</param>
    <param name="Производительность нагр., кВт">11.5</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">3.3</param>
    <param name="Потребляемая мощность нагр., кВт">3.15</param>
    <param name="Макс потребляемая мощность кВт">4.9</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950×840×340</param>
    <param name="Размеры упаковки ДхВхГ, мм">1110×920×460</param>
    <param name="Вес нетто, кг">70</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7893" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7893</url>
    <price>49368.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>76</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7893/d254fff934-1_resize_1200x1200.jpg
    </picture>
    <name>LOCI-48UYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 14,4кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 380-420В / 3Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">14.4</param>
    <param name="Производительность нагр., кВт">17.3</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">4.25</param>
    <param name="Потребляемая мощность нагр., кВт">4.2</param>
    <param name="Макс потребляемая мощность кВт">6.75</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950x1386x340</param>
    <param name="Размеры упаковки ДхВхГ, мм">1110x1530x460</param>
    <param name="Вес нетто, кг">101.5</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="7894" available="false">
    <url>https://b2b.ktg.in.ua/catalog/7894</url>
    <price>52239.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>76</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7894/2d4f006674-1_resize_1200x1200.jpg
    </picture>
    <name>LOCI-60UYA</name>
    <description>
    &lt;p&gt;Мощность охлаждения 17,5кВт, Магистраль 9,52(3/8) / 19,05(3/4), питание 380-420В / 3Ф / 50Гц, максимальная длинна магистрали 50м, максимальный перепад высот 30м , Компрессор GMCC, &lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">17.5</param>
    <param name="Производительность нагр., кВт">19</param>
    <param name="Тип оборудования">Полупромышленные</param>
    <param name="Тип блока">Наружный</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">380-420 / 3 / 50</param>
    <param name="Потребляемая мощность охл., кВт">6.34</param>
    <param name="Потребляемая мощность нагр., кВт">5.95</param>
    <param name="Макс потребляемая мощность кВт">7.5</param>
    <param name="Компрессор">GMCC</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">50</param>
    <param name="Макс. перепад высоты, м">30</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Размеры ДхВхГ, мм">950x1386x340</param>
    <param name="Размеры упаковки ДхВхГ, мм">1110x1530x460</param>
    <param name="Вес нетто, кг">109</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="794" available="true">
    <url>https://b2b.ktg.in.ua/catalog/794</url>
    <price>0.33</price>
    <currencyId>UAH</currencyId>
    <categoryId>82</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems794/b817fd61dc-1_resize_1200x1200.jpg
    </picture>
    <name>LCP-01 panel</name>
    <description>
    &lt;p&gt;Декоративная панель для кассетных блоков Lanzkraft&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    </offer>
    <offer id="795" available="true">
    <url>https://b2b.ktg.in.ua/catalog/795</url>
    <price>0.33</price>
    <currencyId>UAH</currencyId>
    <categoryId>82</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems795/2e1a638b63-1_resize_1200x1200.jpg
    </picture>
    <name>LCP-02 panel</name>
    <description>
    &lt;p&gt;Декоративная панель для кассетных блоков Lanzkraft&lt;/p&gt;
    </description>
    <param name="Тип оборудования">Полупромышленные</param>
    </offer>
    <offer id="7641-7642" available="true">
    <price>13662.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7641/9294818725-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7642/e346ae0ca8-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер Lanzkraft LIU/LOU-07IAFL інверторний</name>
    <categoryId>375</categoryId>
    <param name="Производительность охл., кВт">2.2</param>
    <param name="Производительность нагр., кВт">2.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">INNOVATION R32 INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.71</param>
    <param name="Потребляемая мощность нагр., кВт">0.81</param>
    <param name="Макс потребляемая мощность кВт">1.6</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Внутр. блок Уровень шума, дБ(А)">54</param>
    <param name="Наружн. блок Уровень шума, дБ(А)">61</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">750x285x200</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">730x545x285</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">820x347x277</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">850x620x370</param>
    <param name="Расстояние между лапами, мм">540</param>
    <param name="Внутр. блок Вес нетто, кг">7.5</param>
    <param name="Наружн. блок Вес нетто, кг">25</param>
    </offer>
    <offer id="7643-7644" available="true">
    <price>14223.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7643/dfc74cde75-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7644/22a720ee28-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер Lanzkraft LIU/LOU-09IAFL інверторний</name>
    <categoryId>375</categoryId>
    <param name="Производительность охл., кВт">2.6</param>
    <param name="Производительность нагр., кВт">2.9</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">INNOVATION R32 INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.75</param>
    <param name="Потребляемая мощность нагр., кВт">0.85</param>
    <param name="Макс потребляемая мощность кВт">1.7</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Внутр. блок Уровень шума, дБ(А)">54</param>
    <param name="Наружн. блок Уровень шума, дБ(А)">61</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">750x285x200</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">730x545x285</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">820x347x277</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">850x620x370</param>
    <param name="Расстояние между лапами, мм">540</param>
    <param name="Внутр. блок Вес нетто, кг">7.5</param>
    <param name="Наружн. блок Вес нетто, кг">25</param>
    </offer>
    <offer id="7645-7646" available="true">
    <price>15510.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7645/1d56b96d27-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7646/65967f7163-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер Lanzkraft LIU/LOU-12IAFL інверторний</name>
    <categoryId>375</categoryId>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">3.6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">INNOVATION R32 INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.19</param>
    <param name="Потребляемая мощность нагр., кВт">1.15</param>
    <param name="Макс потребляемая мощность кВт">1.9</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Внутр. блок Уровень шума, дБ(А)">54</param>
    <param name="Наружн. блок Уровень шума, дБ(А)">62</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">750x285x200</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">730x545x285</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">820x347x277</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">850x620x370</param>
    <param name="Расстояние между лапами, мм">540</param>
    <param name="Внутр. блок Вес нетто, кг">8</param>
    <param name="Наружн. блок Вес нетто, кг">25</param>
    </offer>
    <offer id="7647-7648" available="true">
    <price>25773.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7647/832c624a8b-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7648/7aa1a44188-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер Lanzkraft LIU/LOU-18IAFL інверторний</name>
    <categoryId>375</categoryId>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.28</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">INNOVATION R32 INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.5</param>
    <param name="Потребляемая мощность нагр., кВт">1.45</param>
    <param name="Макс потребляемая мощность кВт">1.6</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">GMCC</param>
    <param name="Внутр. блок Уровень шума, дБ(А)">57</param>
    <param name="Наружн. блок Уровень шума, дБ(А)">62</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">900Ч310Ч225</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">800Ч545Ч315</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">970Ч382Ч302</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">920Ч620Ч400</param>
    <param name="Расстояние между лапами, мм">546</param>
    <param name="Внутр. блок Вес нетто, кг">11</param>
    <param name="Наружн. блок Вес нетто, кг">30.5</param>
    </offer>
    <offer id="7649-7650" available="true">
    <price>32637.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7649/3745c0cc82-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7650/593a2b537a-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер Lanzkraft LIU/LOU-24IAFL інверторний</name>
    <categoryId>375</categoryId>
    <param name="Производительность охл., кВт">6.5</param>
    <param name="Производительность нагр., кВт">6.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">INNOVATION R32 INVERTER</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.8</param>
    <param name="Потребляемая мощность нагр., кВт">1.85</param>
    <param name="Макс потребляемая мощность кВт">2.4</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">GMCC</param>
    <param name="Внутр. блок Уровень шума, дБ(А)">62</param>
    <param name="Наружн. блок Уровень шума, дБ(А)">66</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">1082Ч330Ч233</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">825Ч655Ч310</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">1155Ч397Ч312</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">945Ч725Ч435</param>
    <param name="Расстояние между лапами, мм">546</param>
    <param name="Внутр. блок Вес нетто, кг">14</param>
    <param name="Наружн. блок Вес нетто, кг">40</param>
    </offer>
    <offer id="7471-7475" available="true">
    <price>13332.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7471/c172ef6cdc-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7475/1567cde0c4-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер Lanzkraft LSWH/LSAH-35FL1N on/off</name>
    <categoryId>88</categoryId>
    <param name="Производительность охл., кВт">3.55</param>
    <param name="Производительность нагр., кВт">3.65</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">INNOVATION</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.056</param>
    <param name="Потребляемая мощность нагр., кВт">0.966</param>
    <param name="Макс потребляемая мощность кВт">1.75</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">20</param>
    <param name="Макс. перепад высоты, м">8</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">27</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">GMCC</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">750х285х200</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">710х500х240</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">820х345х280</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">780х570х345</param>
    <param name="Расстояние между лапами, мм">495</param>
    <param name="Внутр. блок Вес нетто, кг">9</param>
    <param name="Наружн. блок Вес нетто, кг">25</param>
    </offer>
    <offer id="7472-7476" available="true">
    <price>21351.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7472/ea90e8e249-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7476/c5f8dfb300-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер Lanzkraft LSWH/LSAH-50FL1N on/off</name>
    <categoryId>88</categoryId>
    <param name="Производительность охл., кВт">5.3</param>
    <param name="Производительность нагр., кВт">5.45</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">INNOVATION</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.584</param>
    <param name="Потребляемая мощность нагр., кВт">1.443</param>
    <param name="Макс потребляемая мощность кВт">2.2</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">29</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">900х310х225</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">795х525х290</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">950х380х290</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">907х382х600</param>
    <param name="Расстояние между лапами, мм">545</param>
    <param name="Внутр. блок Вес нетто, кг">11</param>
    <param name="Наружн. блок Вес нетто, кг">37</param>
    </offer>
    <offer id="7473-7477" available="true">
    <price>27192.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7473/5007115366-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7477/245172d395-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер Lanzkraft LSWH/LSAH-70FL1N on/off</name>
    <categoryId>88</categoryId>
    <param name="Производительность охл., кВт">7</param>
    <param name="Производительность нагр., кВт">7.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">INNOVATION</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.222</param>
    <param name="Потребляемая мощность нагр., кВт">2.112</param>
    <param name="Макс потребляемая мощность кВт">2.9</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">31</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">GMCC</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">900х310х225</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">825х655х310</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">950х380х290</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">945х725х435</param>
    <param name="Расстояние между лапами, мм">540</param>
    <param name="Внутр. блок Вес нетто, кг">12</param>
    <param name="Наружн. блок Вес нетто, кг">46</param>
    </offer>
    <offer id="7466" available="true">
    <url>https://b2b.ktg.in.ua/catalog/7466</url>
    <price>20328.00</price>
    <currencyId>UAH</currencyId>
    <categoryId>88</categoryId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7466/afa2224808-1_resize_1200x1200.jpg
    </picture>
    <name>LSAH-100AB1N</name>
    <description>
    &lt;p&gt;Мощность охлаждения 7,9кВт, Магистраль 6,35(1/4) / 15,88(5/8), питание 220-240В / 1Ф / 50Гц, максимальная длинна магистрали 25м, максимальный перепад высот 10м , Компрессор HIGHLY, расстояние между лапами 540мм&lt;/p&gt;
    </description>
    <param name="Производительность охл., кВт">7.9</param>
    <param name="Производительность нагр., кВт">7.6</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Тип блока">Наружный</param>
    <param name="Серия">INNOVATION</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.48</param>
    <param name="Потребляемая мощность нагр., кВт">2.267</param>
    <param name="Макс потребляемая мощность кВт">3.17</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">25</param>
    <param name="Макс. перепад высоты, м">10</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Размеры ДхВхГ, мм">825х655х310</param>
    <param name="Размеры упаковки ДхВхГ, мм">945х725х435</param>
    <param name="Расстояние между лапами, мм">540</param>
    <param name="Вес нетто, кг">50</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    </offer>
    <offer id="6226-6227" available="true">
    <price>10329.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6226/17b2d954e1-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6227/81189b6cac-1_resize_1200x1200.png
    </picture>
    <name>Кондиціонер SAKATA Kitto SIH/SOH-020SHDB on/off</name>
    <categoryId>34</categoryId>
    <param name="Производительность охл., кВт">2.25</param>
    <param name="Производительность нагр., кВт">2.35</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">KITTO</param>
    <param name="Инвертор">Нет</param>
    <param name="Цвет">Белый</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.68</param>
    <param name="Потребляемая мощность нагр., кВт">0.63</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">25</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Страна производитель">Китай</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">RECHI</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">765х280х220</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">660x482х240</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">800х335х265</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">780x530х315</param>
    <param name="Расстояние между лапами, мм">430</param>
    <param name="Внутр. блок Вес нетто, кг">8</param>
    <param name="Наружн. блок Вес нетто, кг">21.5</param>
    </offer>
    <offer id="6228-6229" available="true">
    <price>11253.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6228/f5ccec1a67-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6229/5c55b94000-1_resize_1200x1200.png
    </picture>
    <name>Кондиціонер SAKATA Kitto SIH/SOH-025SHDB on/off</name>
    <categoryId>34</categoryId>
    <param name="Производительность охл., кВт">2.65</param>
    <param name="Производительность нагр., кВт">2.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">KITTO</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.81</param>
    <param name="Потребляемая мощность нагр., кВт">0.76</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">26</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">RECHI</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">765х280х220</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">660x482х240</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">800х335х265</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">780x530х315</param>
    <param name="Расстояние между лапами, мм">430</param>
    <param name="Внутр. блок Вес нетто, кг">8</param>
    <param name="Наружн. блок Вес нетто, кг">23</param>
    </offer>
    <offer id="6230-6231" available="true">
    <price>14124.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6230/d1f39fe05f-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6231/03b3d042d2-1_resize_1200x1200.png
    </picture>
    <name>Кондиціонер SAKATA Kitto SIH/SOH-035SHDB on/off</name>
    <categoryId>34</categoryId>
    <param name="Производительность охл., кВт">3.27</param>
    <param name="Производительность нагр., кВт">3.41</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">KITTO</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.01</param>
    <param name="Потребляемая мощность нагр., кВт">0.94</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">29</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">GMCC</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">765х280х220</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">715х482х240</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">800х335х265</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">830х530х315</param>
    <param name="Расстояние между лапами, мм">440</param>
    <param name="Внутр. блок Вес нетто, кг">8</param>
    <param name="Наружн. блок Вес нетто, кг">26</param>
    </offer>
    <offer id="6232-6233" available="true">
    <price>22704.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6232/bd497befb9-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6233/c73b798d6e-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер SAKATA Kitto SIH/SOH-050SHDB on/off</name>
    <categoryId>34</categoryId>
    <param name="Производительность охл., кВт">5</param>
    <param name="Производительность нагр., кВт">5.2</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">KITTO</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.56</param>
    <param name="Потребляемая мощность нагр., кВт">1.44</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">31</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">GMCC</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">934х325х244</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">760x545х255</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">1000х390х315</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">890x580х350</param>
    <param name="Расстояние между лапами, мм">530</param>
    <param name="Внутр. блок Вес нетто, кг">12</param>
    <param name="Наружн. блок Вес нетто, кг">36</param>
    </offer>
    <offer id="6234-6235" available="true">
    <price>28380.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6234/98b4006c39-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6235/58e62ba2a8-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер SAKATA Kitto SIH/SOH-060SHDB on/off</name>
    <categoryId>34</categoryId>
    <param name="Производительность охл., кВт">6.8</param>
    <param name="Производительность нагр., кВт">7.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">KITTO</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.12</param>
    <param name="Потребляемая мощность нагр., кВт">1.97</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">32</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">934х325х244</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">830x629х285</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">1000х390х315</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">980x665х385</param>
    <param name="Расстояние между лапами, мм">565</param>
    <param name="Внутр. блок Вес нетто, кг">12.5</param>
    <param name="Наружн. блок Вес нетто, кг">45</param>
    </offer>
    <offer id="6236-6237" available="true">
    <price>31053.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6236/5847acd2f1-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6237/be34985050-1_resize_1200x1200.jpg
    </picture>
    <name>Кондиціонер SAKATA Kitto SIH/SOH-085SHDB on/off</name>
    <categoryId>34</categoryId>
    <param name="Производительность охл., кВт">8.55</param>
    <param name="Производительность нагр., кВт">8.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">KITTO</param>
    <param name="Инвертор">Нет</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.57</param>
    <param name="Потребляемая мощность нагр., кВт">2.37</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-7</param>
    <param name="Уровень шума, дБ(А)">33</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">GMCC</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">1100х325х244</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">860x650x310</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">1170х390х315</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">995x720x420</param>
    <param name="Расстояние между лапами, мм">540</param>
    <param name="Внутр. блок Вес нетто, кг">15</param>
    <param name="Наружн. блок Вес нетто, кг">54</param>
    </offer>
    <offer id="6240-6241" available="true">
    <price>15675.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6240/e41a5af69c-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6241/52c16d1e99-1_resize_1200x1200.png
    </picture>
    <name>
    Кондиціонер SAKATA Hikaru SIE/SOE-025SHDC інверторний
    </name>
    <categoryId>30</categoryId>
    <param name="Производительность охл., кВт">2.7</param>
    <param name="Производительность нагр., кВт">2.8</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">HIKARU</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.78</param>
    <param name="Потребляемая мощность нагр., кВт">0.73</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">24</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">LG</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">800x270x214</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">660x482x240</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">830x335x260</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">780x530x315</param>
    <param name="Расстояние между лапами, мм">435</param>
    <param name="Внутр. блок Вес нетто, кг">7.7</param>
    <param name="Наружн. блок Вес нетто, кг">22.9</param>
    </offer>
    <offer id="6242-6245" available="false">
    <price>16995.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6242/7c6142f437-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6245/aebc1e451c-1_resize_1200x1200.png
    </picture>
    <name>
    Кондиціонер SAKATA Hikaru SIE/SOE-035SHDC інверторний
    </name>
    <categoryId>30</categoryId>
    <param name="Производительность охл., кВт">3.45</param>
    <param name="Производительность нагр., кВт">3.5</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">HIKARU</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1</param>
    <param name="Потребляемая мощность нагр., кВт">0.9</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">24</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">LG</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">800x270x214</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">660x482x240</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">830x335x260</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">780x530x315</param>
    <param name="Расстояние между лапами, мм">440</param>
    <param name="Внутр. блок Вес нетто, кг">7.9</param>
    <param name="Наружн. блок Вес нетто, кг">23.2</param>
    </offer>
    <offer id="6243-6246" available="true">
    <price>27225.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6243/5e59d83018-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6246/aac1fc505c-1_resize_1200x1200.jpg
    </picture>
    <name>
    Кондиціонер SAKATA Hikaru SIE/SOE-050SHDC інверторний
    </name>
    <categoryId>30</categoryId>
    <param name="Производительность охл., кВт">5.55</param>
    <param name="Производительность нагр., кВт">5.85</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">HIKARU</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">1.59</param>
    <param name="Потребляемая мощность нагр., кВт">1.54</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 12,7(1/2)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">30</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">GMCC</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">977x315x236</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">810x585x280</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">1040x390x315</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">940x630x385</param>
    <param name="Расстояние между лапами, мм">510</param>
    <param name="Внутр. блок Вес нетто, кг">12.5</param>
    <param name="Наружн. блок Вес нетто, кг">37</param>
    </offer>
    <offer id="6244-6247" available="true">
    <price>32967.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6244/bc6e046a3b-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6247/a42ec9af99-1_resize_1200x1200.jpg
    </picture>
    <name>
    Кондиціонер SAKATA Hikaru SIE/SOE-060SHDC інверторний
    </name>
    <categoryId>30</categoryId>
    <param name="Производительность охл., кВт">6.7</param>
    <param name="Производительность нагр., кВт">7.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">HIKARU</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">2.03</param>
    <param name="Потребляемая мощность нагр., кВт">1.89</param>
    <param name="Хладагент">R410A</param>
    <param name="Диаметр труб, мм(дюйм)">9,52(3/8) / 15,88(5/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-15</param>
    <param name="Уровень шума, дБ(А)">32</param>
    <param name="Wi-Fi">Нет</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">HIGHLY</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">1148x315x236</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">830x634x287</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">1210x390x315</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">980x665x385</param>
    <param name="Расстояние между лапами, мм">540</param>
    <param name="Внутр. блок Вес нетто, кг">14.5</param>
    <param name="Наружн. блок Вес нетто, кг">45</param>
    </offer>
    <offer id="7713-7717" available="true">
    <price>26367.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7713/cf65e306cd-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7717/47dc0efdcd-1_resize_1200x1200.png
    </picture>
    <name>
    Кондиціонер-тепловий насос SAKATA SIE/SOE-025SHDC інверторний
    </name>
    <categoryId>379</categoryId>
    <param name="Производительность охл., кВт">2.6</param>
    <param name="Производительность нагр., кВт">3</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">HEAT PUMP</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.55</param>
    <param name="Потребляемая мощность нагр., кВт">0.715</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Уровень шума, дБ(А)">28</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">GMCC</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">843×278×211</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">810×585×280</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">900×335×260</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">940×630×385</param>
    <param name="Расстояние между лапами, мм">510</param>
    <param name="Внутр. блок Вес нетто, кг">9</param>
    <param name="Наружн. блок Вес нетто, кг">36</param>
    </offer>
    <offer id="7714-7718" available="true">
    <price>28611.00</price>
    <currencyId>UAH</currencyId>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7714/f629510f0c-1_resize_1200x1200.jpg
    </picture>
    <picture>
    https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems7718/3d738da544-1_resize_1200x1200.png
    </picture>
    <name>
    Кондиціонер-тепловий насос SAKATA SIE/SOE-035SHDC інверторний
    </name>
    <categoryId>379</categoryId>
    <param name="Производительность охл., кВт">3.5</param>
    <param name="Производительность нагр., кВт">4.1</param>
    <param name="Тип оборудования">Бытовые</param>
    <param name="Серия">HEAT PUMP</param>
    <param name="Инвертор">Да</param>
    <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
    <param name="Потребляемая мощность охл., кВт">0.795</param>
    <param name="Потребляемая мощность нагр., кВт">1.05</param>
    <param name="Хладагент">R32</param>
    <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
    <param name="Макс. длинна магистрали, м">15</param>
    <param name="Макс. перепад высоты, м">5</param>
    <param name="Мин. температура окр. среды">-25</param>
    <param name="Уровень шума, дБ(А)">28</param>
    <param name="Wi-Fi">Да</param>
    <param name="Гарантийный срок, лет">3</param>
    <param name="Внутр. блок Тип блока">Настенный</param>
    <param name="Наружн. блок Тип блока">Наружный</param>
    <param name="Компрессор">GMCC</param>
    <param name="Внутр. блок Размеры ДхВхГ, мм">843×278×211</param>
    <param name="Наружн. блок Размеры ДхВхГ, мм">810×585×280</param>
    <param name="Внутр. блок Размеры упаковки ДхВхГ, мм">900×335×260</param>
    <param name="Наружн. блок Размеры упаковки ДхВхГ, мм">940×630×385</param>
    <param name="Расстояние между лапами, мм">510</param>
    <param name="Внутр. блок Вес нетто, кг">9</param>
    <param name="Наружн. блок Вес нетто, кг">37</param>
    </offer>
    </offers>
    </shop>
    </yml_catalog>'
    @test_var = Hash.from_xml(@raw_xml.gsub("\n", ""))
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to admin_products_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    @product.destroy

    redirect_to admin_products_path, flash: { success: t('.success') }
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit([:title, :slug, :product_category_id, :template_id,
                                      :description, :available, :price, :currency, :picture_url, :content])
  end
end