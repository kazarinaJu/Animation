//
//  Animation.swift
//  Homework 3.1
//
//  Created by Юлия Ястребова on 03.05.2023.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.preset.randomElement() ?? "",
            curve: DataStore.shared.curve.randomElement() ?? "",
            force: Double.random(in: 1.0 ..< 2.0),
            duration: Double.random(in: 1.0 ..< 2.0),
            delay: 1.0
        )
    }
}


