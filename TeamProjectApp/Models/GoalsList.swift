//
//  GoalsList.swift
//  TeamProjectApp
//
//  Created by Никита Курюмов on 07.12.22.
//

import Foundation

struct Goals {
    let goalTitle: String
    let goalDescription: String
    
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
    
    func getNewGoal (_ title: String, _ description: String) -> [Goals] {
        var newGoal: [Goals]
        newGoal.append(Goals(goalTitle: String, goalDescription: String))
        return newGoal
    }
    
}
    
    

