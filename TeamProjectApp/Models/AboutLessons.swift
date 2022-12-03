//
//  AboutLessons.swift
//  TeamProjectApp
//
//  Created by Arina on 03.12.2022.
//

import Foundation

struct ModulesLessons {
    var description: String
}

struct Description {
    let lessonsDescription: [ModulesLessons]
}

struct Lessons {
    let lessonNumber: String
    let lessonTitle: String
    
    var title: String {
        "\(lessonNumber) - \(lessonTitle)"
    }
}

struct LessonsSection {
    let title: String
    let lessons: [Lessons]
}

extension Lessons {
    static func getFirstModule() -> LessonsSection {
        
        LessonsSection(
            title: "Module 1",
            lessons: [
                Lessons(lessonNumber: "1.1", lessonTitle: "Введение. Константы и переменные. Базовые типы данных"),
                Lessons(lessonNumber: "1.2", lessonTitle: "Базовые операторы. Работа со строками"),
                Lessons(lessonNumber: "1.3", lessonTitle: "Операторы ветвлений"),
                Lessons(lessonNumber: "1.4", lessonTitle: "Типы коллекций. Циклы"),
                Lessons(lessonNumber: "1.5", lessonTitle: "Функции"),
                Lessons(lessonNumber: "1.6", lessonTitle: "Вложенные функции. Замыкания"),
                Lessons(lessonNumber: "1.7", lessonTitle: "ООП. Классы и объекты"),
                Lessons(lessonNumber: "1.8", lessonTitle: "ООП. Структуры"),
                Lessons(lessonNumber: "1.9", lessonTitle: "Перечисления"),
                Lessons(lessonNumber: "1.10", lessonTitle: "Дополнительные концепции Swift")
            ]
        )
        
    }
    static  func getSecondModule() -> LessonsSection {
        
        LessonsSection(
            title: "Module 2",
            lessons: [
                Lessons(lessonNumber: "2.1", lessonTitle: "Знакомство с Xcode"),
                Lessons(lessonNumber: "2.2", lessonTitle: "Hello World"),
                Lessons(lessonNumber: "2.3", lessonTitle: "Разбор проекта TrafficLight"),
                Lessons(lessonNumber: "2.4", lessonTitle: "Знакомство с фреймворком UIKit. Работа с документацией"),
                Lessons(lessonNumber: "2.5", lessonTitle: "Контроль и приведение типов. Тип данных Any"),
                Lessons(lessonNumber: "2.6", lessonTitle: "Переходы и передача данных между экранами"),
                Lessons(lessonNumber: "2.7", lessonTitle: "Архитектура MVC. PersonalQuiz"),
                Lessons(lessonNumber: "2.8", lessonTitle: "PersonalQuiz"),
                Lessons(lessonNumber: "2.9", lessonTitle: "Протоколы"),
                Lessons(lessonNumber: "2.10", lessonTitle: "Разбор проекта ColorizedApp"),
                Lessons(lessonNumber: "2.11", lessonTitle: "Работа с табличными представлениями"),
                Lessons(lessonNumber: "2.12", lessonTitle: "Разбор проекта ContactList"),
                Lessons(lessonNumber: "2.13", lessonTitle: "Жизненный цикл View. Анатомия приложения"),
                Lessons(lessonNumber: "2.14", lessonTitle: "Управление памятью ARC")
            ]
        )
    }
    
    static  func getThirdModule() -> LessonsSection {
        
        LessonsSection(
            title: "Module 3",
            lessons: [
                Lessons(lessonNumber: "3.1", lessonTitle: "Менеджеры зависимостей. Фреймворк SpringAnimation"),
                Lessons(lessonNumber: "3.2", lessonTitle: "Работа с сетью. URL session"),
                Lessons(lessonNumber: "3.3", lessonTitle: "Работа с сетью. URL session"),
                Lessons(lessonNumber: "3.4", lessonTitle: "Работа с сетью. Alamofire"),
                Lessons(lessonNumber: "3.5", lessonTitle: "Хранение данных"),
                Lessons(lessonNumber: "3.6", lessonTitle: "Хранение данных. CoreData"),
                Lessons(lessonNumber: "3.7", lessonTitle: "Хранение данных. Realm"),
                Lessons(lessonNumber: "3.8", lessonTitle: "Async-Await")
            ]
        )
    }
    
    static  func getFourthModule() -> LessonsSection {
        
        LessonsSection(
            title: "Module 4",
            lessons: [
                Lessons(lessonNumber: "4.1", lessonTitle: "Знакомство со SwiftUI"),
                Lessons(lessonNumber: "4.2", lessonTitle: "Элементы объектной библиотеки SwiftUI. Модификаторы"),
                Lessons(lessonNumber: "4.3", lessonTitle: "Работа с зависимостями данных"),
                Lessons(lessonNumber: "4.4", lessonTitle: "Использование SwiftUI совместно с UIKit"),
                Lessons(lessonNumber: "4.5", lessonTitle: "Lists & Navigation"),
                Lessons(lessonNumber: "4.6", lessonTitle: "Работа с анимацией и графикой"),
                Lessons(lessonNumber: "4.7", lessonTitle: "GridView")
            ]
        )
    }
    
    static  func getFifthModule() -> LessonsSection {
        
        LessonsSection(
            title: "Module 5",
            lessons: [
                Lessons(lessonNumber: "5.1", lessonTitle: "Тестирование"),
                Lessons(lessonNumber: "5.2", lessonTitle: "Архитектурные паттерны в IOS"),
                Lessons(lessonNumber: "5.3", lessonTitle: "MVVM на практике"),
                Lessons(lessonNumber: "5.4", lessonTitle: "Boxing. MVVM в SwiftUI"),
                Lessons(lessonNumber: "5.5", lessonTitle: "Viper"),
                Lessons(lessonNumber: "5.6", lessonTitle: "Viper на практике"),
                Lessons(lessonNumber: "5.7", lessonTitle: "CleanSwift"),
                Lessons(lessonNumber: "5.8", lessonTitle: "CleanSwift на практике")
            ]
        )
    }
    
    static  func getSixthModule() -> LessonsSection {
        
        LessonsSection(
            title: "Module 6",
            lessons: [
                Lessons(lessonNumber: "6.1", lessonTitle: "Старт карьеры IOS-разработчика. Проф разбор"),
                Lessons(lessonNumber: "6.2", lessonTitle: "Этап поиска работы"),
                Lessons(lessonNumber: "6.3", lessonTitle: "Проверка ваших резюме от A до Z"),
                Lessons(lessonNumber: "6.4", lessonTitle: "Тур по собеседованию с рекрутером"),
                Lessons(lessonNumber: "6.5", lessonTitle: "Техническая часть собеседования"),
                Lessons(lessonNumber: "6.6", lessonTitle: "Pet-Project"),
                Lessons(lessonNumber: "6.7", lessonTitle: "Личный бренд IOS-разработчика")
            ]
        )
    }
}


extension ModulesLessons {
    
    static  func getFirstModuleDescription() -> Description {
        Description(
            lessonsDescription:
                [
                    ModulesLessons(
                        description:
                            """
                            Приветствие:
                            Краткое описание курса.
                            Регламент проведения уроков
                                     
                            Введение:
                            Краткая история Swift
                            Преимущество языка
                                     
                            Синтаксис языка и основные концепции:
                            Знакомство с Playground
                            Константы и переменные
                            Базовые типы данных
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Базовые операторы:
                            Арифметические операторы
                            Операторы присваивания
                            Операторы сравнения
                            Операторы диапазона
                            Логические операторы
                             
                            Работа со строками:
                            Объявление и инициализация строк
                            Многострочные литералы
                            Конкатенация строк
                            Интерполяция строк
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Операторы ветвлений:
                            if-else
                            Тернарный оператор
                            switch statement
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Типы коллекций:
                            Массивы
                            Множества
                            Словари
                            Строки
                             
                            Циклы:
                            for-in
                            while
                            repeat-while
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Функции:
                            Определение функции
                            Объявление функции
                            Функции возвращающие значения
                            Функции с параметрами
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Вложенные функции:
                            Пример вложенной функции
                             
                            Замыкания:
                            Определение замыкания
                            Функции как замыкания
                            Замыкающие выражения
                            Переменные, как замыкания
                            Захват значений замыканиями
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            ООП в Swift:
                            Общее понятие ООП
                             
                            Классы и объекты:
                            Описание класса
                            Публичные свойства и методы
                            Инициализаторы
                             
                            Инкапсуляция:
                            Приватные свойства и методы
                            Геттеры
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            ООП в Swift:
                            Наследование
                            Полиморфизм
                             
                            Структуры:
                            Первый взгляд
                            Сравнение классов и структур
                            Методы структур
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Перечисления:
                            Синтаксис перечислений
                            Возможность перечислений
                            Исходные значения кейсов перечислений
                            Инициализация
                            Связанные значения (ассоциированные параметры)
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Кортежи:
                            Синтаксис
                            Получение доступа к элементам
                            Именование элементов
                            Использование кортежей
                             
                            Опциональные типы:
                            Синтаксис
                            Извлечение опциональных типов
                            Принудительное извлечение
                            Опциональная привязка
                            Оператор Guard
                            Неявно извлеченные опционалы
                            Опциональная последовательность
                            """
                    )
                    
                ]
        )
        
    }
    static  func getSecondModuleDescription() -> Description {
        Description(
            lessonsDescription:
                [
                    ModulesLessons(
                        description:
                            """
                            Знакомство с Xcode:
                            Создание проекта
                            Интерфейс Xcode
                            Библиотека объектов
                            Констрейнты
                                     
                            Работа с Git:
                            Создание локального репозитория
                            Связывание локального репозитория с удаленным
                            Создание коммитов
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Работа с интерфейс билдером:
                            Stack View
                            Размещение элементов интерфейса на экране
                            Создание аутлетов
                            Создание экшина для кнопки
                            Логика переключения приветствия
                             
                            Stack View:
                            Размещение элементов при помощи стеков
                            Адаптация элементов в соответствии с ландшафтной и портретной ориентацией устройства
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Размещение элементов при помощи констрейнтов
                            Размещение элементов при помощи стеков
                            Динамические размеры элементов интерфейса
                            Логика переключения сигналов светофора
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            UISegmentedControl
                            UISlider
                            UITextField
                            UIAlertController
                            UIDatePicker
                            UISwitch
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Контроль типов
                            Приведение типов
                            Тип данных Any
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Navigation Controller
                            UINavigatinController
                            Навигейшин бар
                            Элементы навигации
                            Виды сегвеев
                            Передача данных вперед
                            Возврат
                            Передача данных назад
                            Программный переход
                             
                            Tab Bar Controller
                            UITabBarController
                            Передача данных между контроллерами в таб баре
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            MVC
                            Предпосылки к появлению архитектурных паттернов
                            Разбор схемы
                            Советы по работе с контроллерами представлений
                             
                            Personal Quiz
                            Работа с интерфейсом
                            Работа с модельным слоем
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Связывание элементов интерфейса с кодом
                            Работа с бизнес логикой приложения
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Нативные протоколы
                            CustomStringConvertable
                            Equatable
                            Comparable
                            
                            Создание собственного протокола
                            
                            Делегирование
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Работа с интерфейсом
                            Передача данных между экранами
                            Передача цвета в слайдеры
                            Работа с текстовыми полями
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            UITableViewController
                            UITableView
                            UITableViewDataSource
                            UITableViewDelegate
                            UITableViewCell
                            """
                    ),
                    ModulesLessons(
                        description:
                            """
                            Работа с сервисным слоем
                            Работа с модельным слоем
                            Отображение данных
                            Работа с секциями
                            Кастомизация ячеек
                            """
                    ),
                    ModulesLessons(
                        description:
                           """
                           Жизненный цикл View
                           viewDidLoad
                           viewWillAppear
                           viewWillLayoutSubviews
                           viewDidLayoutSubviews
                           viewDidAppear
                           viewWillTransitionToSize
                           viewWillDisappear
                           viewDidDisappear
                            
                           Жизненный цикл приложения
                           willConnectTo session
                           sceneWillEnterForeground
                           sceneDidBecomeActive
                           applicationWillResignActive
                           applicationDidEnterBackground
                           applicationWillTerminate
                           """
                    ),
                    ModulesLessons(
                        description:
                           """
                           Memory Basics
                           Finding and Fixing Memory Leaks
                           Types of References
                           Retain Cycles in Closures
                           """
                    )
                    
                ]
        )
    }
    
    static  func getThirdModuleDescription() -> Description {
        Description(
            lessonsDescription:
                [
                    ModulesLessons(
                        description:
                        """
                        08 декабря 2022, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        12 декабря 2022, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        15 декабря 2022, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        19 декабря 2022, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        22 декабря 2022, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        26 декабря 2022, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        28 декабря 2022, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        30 декабря 2022, 20:00 мск
                        """
                    )
                ]
        )
    }
    
    static  func getFourthModuleDescription() -> Description {
        Description(
            lessonsDescription:
                [
                    ModulesLessons(
                        description:
                        """
                        09 января 2023, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        12 января 2023, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        16 января 2023, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        19 января 2023, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        23 января 2023, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        26 января 2023, 20:00 мск
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        Custom GridView
                        Подготовка
                        Работа с сеткой
                        Дженерики
                        Разбота с размерами
                        Работа с моделью представления
                         
                        Использование нативных гридов
                        GridItem
                        Использование GridItem в проекте AwardsCollectionApp
                        """
                    )
                ]
        )
    }
    
    static  func getFifthModuleDescription() -> Description {
        Description(
            lessonsDescription:
                [
                    ModulesLessons(
                        description:
                        """
                        Unit Testing
                        Что тестировать?
                        Рекомендации по тестированию
                        Интеграция тестов в проект
                        Пример юнит тестов
                        Тесты на производительность
                        Статистика покрытия проекта тестами
                                 
                        TDD
                        Три правила дядюшки Боба
                        Процесс разработки проекта по TDD
                        Проектирование модели данных с использованием TDD подхода
                        Выводы. Плюсы и минусы подхода
                                 
                        UI Testing
                        Интеграция UI тестов в проект
                        Автогенерация тестов
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        Причинно-следственные связи появления альтернативных архитектурых паттернов
                        Предпосылки к поиску альтернативы MVC
                        Советы по созданию контроллеров представления
                        Проблемы MassiveViewController
                        Признаки хорошей архитектуры
                        Виды архитектурных паттернов
                        Категории сущностей MVC, MVP и MVVM
                        Шаблок "Скромный объект"
                        Схема MVC с точки зрения признаков хорошей архитектуры
                         
                        MVP
                        Разбор схемы
                        Реализация схемы на примере приложения Greeting
                        Схема MVP с точки зрения признаков хорошей архитектуры
                         
                        MVVM
                        Разбор схемы
                        Реализация схемы на примере приложения Greeting
                        Схема MVVM с точки зрения признаков хорошей архитектуры
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        Отображение данных на экране с детальной информацией
                        Сохранение пользовательских предпочтений
                        Отображение списка доступных курсов
                        Работа с ячейкой табличного представления
                        Переход и передача данных на другой экран
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        Data Binding
                        Создание вспомогательного класса-обертки
                        Работа с типом данных Box
                         
                        MVVM в SwiftUI
                        Общие принципы работы со схемой MVVM в SwiftUI
                        Отображение данных на экране с детальной информацией
                        Сохранение пользовательских предпочтений
                        Отображение списка доступных курсов
                        Работа с ячейкой табличного представления
                        Переход и передача данных на другой экран
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        Разбор схемы
                        Реализация схемы на примере приложения Greeting
                        Подготовка проекта SwiftBookApp для перехода на VIPE
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        Отображение данных на экране с детальной информацией
                        Сохранение пользовательских предпочтений
                        Отображение списка доступных курсов
                        Работа с ячейкой табличного представления
                        Переход и передача данных на другой экран
                        Схема VIPER с точки зрения признаков хорошей архитектуры
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        SOLID
                        Single Responsibility Principle
                        Open-Closed Principle
                        Liskov Substitution Principle
                        Interface Segregation Principle
                        Dependency Inversion Principle
                         
                        Чистая архитектура
                        Правило зависимости
                        Разбор схемы чистой архитектуры
                         
                        CleanSwift
                        VIP Cicle
                        Разбор схемы
                        Интеграция шаблонов CleanSwift в Xcode
                        Реализация схемы на примере приложения Greeting
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        Отображение данных на экране с детальной информацией
                        Сохранение пользовательских предпочтений
                        Отображение списка доступных курсов
                        Работа с ячейкой табличного представления
                        Переход и передача данных на другой экран
                        Выводы
                        """
                    )
                ]
        )
    }
    
    static  func getSixthModuleDescription() -> Description {
        Description(
            lessonsDescription:
                [
                    ModulesLessons(
                        description:
                        """
                        В данном уроке домашняя работа не предусмотрена
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        В данном уроке домашняя работа не предусмотрена
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        В данном уроке домашняя работа не предусмотрена
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        В данном уроке домашняя работа не предусмотрена
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        В данном уроке домашняя работа не предусмотрена
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        В данном уроке домашняя работа не предусмотрена
                        """
                    ),
                    ModulesLessons(
                        description:
                        """
                        В данном уроке домашняя работа не предусмотрена
                        """
                    )
                ]
        )
    }
}

