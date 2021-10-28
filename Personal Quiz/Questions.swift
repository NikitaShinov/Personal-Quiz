//
//  Qusetions.swift
//  Personal Quiz
//
//  Created by Никита Шинов on 28.10.2021.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case beetle = "🐞"
    case rabbit = "🐰"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями"
        case .cat:
            return "Любите одиночество"
        case .beetle:
            return "Вы крутой"
        case .rabbit:
            return "Вы милый"
        }
    }
}


extension Question {
    static func getQuestions () -> [Question] {
        return [
            Question(
            text: "Какую пищу вы предпочитаете?",
            type: .single,
            answers: [Answer(text: "Стейк", type: .dog),
                      Answer(text: "Рыба", type: .cat),
                      Answer(text: "Морковь", type: .beetle),
                      Answer(text: "Кукуруза", type: .rabbit),]
        ),
            Question(
            text: "Что Вам нравится больше",
            type: .multiple,
            answers: [Answer(text: "Спать", type: .dog),
                      Answer(text: "Есть", type: .cat),
                      Answer(text: "Пить", type: .beetle),
                      Answer(text: "Бегать", type: .rabbit),]
        ),
            Question(
            text: "Любите ли Вы поездки?",
            type: .ranged,
            answers: [Answer(text: "Ненавижу", type: .dog),
                      Answer(text: "Нервничаю", type: .cat),
                      Answer(text: "Терпимо", type: .beetle),
                      Answer(text: "Обожаю", type: .rabbit),]
        )]
    }
}
