//
//  Card.swift
//  MeditationApp
//
//  Created by Egor Korchagin on 12.04.2021.
//

import Foundation

struct Card: Hashable {
    let iconName: String
    let title: String
    let subtitle: String
    let persentageComplete: Double?
    var percentageText: String? {
        guard let persentageComplete = persentageComplete else {
            return nil
        }
        return("\(persentageComplete)%")
    }
}
