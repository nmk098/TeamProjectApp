//
//  GoalsList.swift
//  TeamProjectApp
//
//  Created by Никита Курюмов on 07.12.22.
//

import Foundation

struct Goals {
    var goalTitle: String
    var goalDescription: String
    
    var goal: String {
        "\(goalTitle) : \(goalDescription)"
    }
}

extension Goals {
    static func getGoalList() -> [Goals] {
        [
            Goals (goalTitle: "Закончить курс!", goalDescription: "Потому что ну а как иначе?"),
            Goals (goalTitle: "Составить Резюме!", goalDescription: "И чтобы не меньше чем на страницу!"),
            Goals(goalTitle: "Пройти собеседование!" , goalDescription: "Так чтоб сразу на миддла"),
            Goals(goalTitle: "Устроиться на работу!", goalDescription: "Самую настоящую, с зарплатой!"),
            Goals(goalTitle: "Захватить мир" , goalDescription: "*злодейский смех*")
        ]
    }
}
    
    

